/* Native pseudocode, not original C#. Exact input bytes checked; preferred VA 0x48c2f6c, Ghidra VA 049c2f6c. */

void ParticleImage_OnFirstParticleFinished(long param_1)

{
  if (*(long *)(param_1 + 0x3240) != 0) {
    UnityEvent_Invoke_0x6001051(*(long *)(param_1 + 0x3240),0);
    return;
  }
                    /* WARNING: Subroutine does not return */
  Throw_NullReference_Wrapper();
}

