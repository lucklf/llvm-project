; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc  -O0 -mtriple=mipsel-linux-gnu -global-isel -verify-machineinstrs %s -o -| FileCheck %s -check-prefixes=MIPS32,FP32
; RUN: llc  -O0 -mtriple=mipsel-linux-gnu -mattr=+fp64,+mips32r2 -global-isel -verify-machineinstrs %s -o -| FileCheck %s -check-prefixes=MIPS32,FP64

declare float @llvm.ceil.f32(float)
define float @ceil_f32(float %a) {
; MIPS32-LABEL: ceil_f32:
; MIPS32:       # %bb.0: # %entry
; MIPS32-NEXT:    addiu $sp, $sp, -24
; MIPS32-NEXT:    .cfi_def_cfa_offset 24
; MIPS32-NEXT:    sw $ra, 20($sp) # 4-byte Folded Spill
; MIPS32-NEXT:    .cfi_offset 31, -4
; MIPS32-NEXT:    jal ceilf
; MIPS32-NEXT:    nop
; MIPS32-NEXT:    lw $ra, 20($sp) # 4-byte Folded Reload
; MIPS32-NEXT:    addiu $sp, $sp, 24
; MIPS32-NEXT:    jr $ra
; MIPS32-NEXT:    nop
entry:
  %0 = call float @llvm.ceil.f32(float %a)
  ret float %0
}

declare double @llvm.ceil.f64(double)
define double @ceil_f64(double %a) {
; MIPS32-LABEL: ceil_f64:
; MIPS32:       # %bb.0: # %entry
; MIPS32-NEXT:    addiu $sp, $sp, -24
; MIPS32-NEXT:    .cfi_def_cfa_offset 24
; MIPS32-NEXT:    sw $ra, 20($sp) # 4-byte Folded Spill
; MIPS32-NEXT:    .cfi_offset 31, -4
; MIPS32-NEXT:    jal ceil
; MIPS32-NEXT:    nop
; MIPS32-NEXT:    lw $ra, 20($sp) # 4-byte Folded Reload
; MIPS32-NEXT:    addiu $sp, $sp, 24
; MIPS32-NEXT:    jr $ra
; MIPS32-NEXT:    nop
entry:
  %0 = call double @llvm.ceil.f64(double %a)
  ret double %0
}

declare float @llvm.floor.f32(float)
define float @floor_f32(float %a) {
; MIPS32-LABEL: floor_f32:
; MIPS32:       # %bb.0: # %entry
; MIPS32-NEXT:    addiu $sp, $sp, -24
; MIPS32-NEXT:    .cfi_def_cfa_offset 24
; MIPS32-NEXT:    sw $ra, 20($sp) # 4-byte Folded Spill
; MIPS32-NEXT:    .cfi_offset 31, -4
; MIPS32-NEXT:    jal floorf
; MIPS32-NEXT:    nop
; MIPS32-NEXT:    lw $ra, 20($sp) # 4-byte Folded Reload
; MIPS32-NEXT:    addiu $sp, $sp, 24
; MIPS32-NEXT:    jr $ra
; MIPS32-NEXT:    nop
entry:
  %0 = call float @llvm.floor.f32(float %a)
  ret float %0
}

declare double @llvm.floor.f64(double)
define double @floor_f64(double %a) {
; MIPS32-LABEL: floor_f64:
; MIPS32:       # %bb.0: # %entry
; MIPS32-NEXT:    addiu $sp, $sp, -24
; MIPS32-NEXT:    .cfi_def_cfa_offset 24
; MIPS32-NEXT:    sw $ra, 20($sp) # 4-byte Folded Spill
; MIPS32-NEXT:    .cfi_offset 31, -4
; MIPS32-NEXT:    jal floor
; MIPS32-NEXT:    nop
; MIPS32-NEXT:    lw $ra, 20($sp) # 4-byte Folded Reload
; MIPS32-NEXT:    addiu $sp, $sp, 24
; MIPS32-NEXT:    jr $ra
; MIPS32-NEXT:    nop
entry:
  %0 = call double @llvm.floor.f64(double %a)
  ret double %0
}
