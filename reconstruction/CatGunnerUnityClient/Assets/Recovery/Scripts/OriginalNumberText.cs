using System;
using System.Globalization;
using System.Numerics;
using UnityEngine;

namespace CatGunner.Recovery
{
    // Native InfVal_change + default InternalToString presentation branch.
    // DecimalAmount remains the independent arithmetic/storage implementation.
    public static class OriginalNumberText
    {
        [Serializable] sealed class FormatData { public string[] Units; }
        static string[] units;
        public static string Format(DecimalAmount value)
        {
            if (value.Coefficient.IsZero) return "0";
            string digits = BigInteger.Abs(value.Coefficient).ToString(CultureInfo.InvariantCulture);
            int exponent = value.Exponent;
            int displayed = checked(digits.Length + exponent);
            int precision = displayed > 3 ? (displayed - 1) % 3 + 3 : displayed;
            // Original truncates significant digits, rather than rounding money.
            if (precision > 0 && digits.Length > precision)
            { exponent += digits.Length - precision; digits = digits.Substring(0, precision); }
            while (digits.Length > 1 && digits[digits.Length - 1] == '0')
            { digits = digits.Substring(0, digits.Length - 1); exponent++; }
            int length = digits.Length + exponent;
            string result;
            if ((exponent <= 0 || precision <= 0 || length <= precision) &&
                (exponent > -digits.Length || precision <= 0 || 1 - exponent <= precision))
            {
                if (exponent >= 0) result = digits + new string('0', exponent);
                else if (length > 0) result = digits.Insert(length, ".");
                else result = "0." + new string('0', -length) + digits;
            }
            else
            {
                if (units == null) units = JsonUtility.FromJson<FormatData>(Resources.Load<TextAsset>("OriginalNumberFormat").text).Units;
                int power = length - 1, group = power / 3, before = power % 3 + 1;
                if (power >= 3 && group <= units.Length && (before - 1 < digits.Length || before - 1 < precision))
                {
                    if (digits.Length < before) digits = digits.PadRight(before, '0');
                    result = (digits.Length > before ? digits.Insert(before, ".") : digits) + units[group - 1];
                }
                else result = (digits.Length > 1 ? digits.Insert(1, ".") : digits) + "e" + (power >= 0 ? "+" : "") + power.ToString(CultureInfo.InvariantCulture);
            }
            return value.Coefficient.Sign < 0 ? "-" + result : result;
        }
    }
}
