/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x2b08d70, Ghidra VA 02c08d70. */

bool OfflineProgressSimulator_IsFinite(uint param_1)

{
  return (param_1 >> 0x17 & 0xff) < 0xff;
}

