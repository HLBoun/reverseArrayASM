; reverseArray.asm
; Huthsady Legend Boun
; Professor Grace A. Comp
; CISP-2410-SVC ASM 
; 27 September 2025
; Brief Description: Program that takes an integer array, and reverses it. 
.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode: DWORD

.data
intArray DWORD 10, 20, 30, 40, 50
placeHolder DWORD 0
leftIterator DWORD 0
firstElement DWORD 0
counter DWORD 0


.code 
main PROC 

  mov esi, OFFSET intArray  ; Add the TYPEOF to this to say "next element"
  mov ecx, LENGTHOF intArray  ; Gets Length of array EG 5
  mov eax, ecx

  mov edx, 0
  mov ebx, 2
  IDIV ebx
  mov ecx, eax  ; Loop counter

  mov counter, LENGTHOF intArray
  mov firstElement, esi
  mov eax, 0
  mov ebx, 0

Top:
  mov eax, TYPE intArray
  mov ebx, [esi]
  mov leftIterator, esi
  mov placeHolder, ebx

  SUB counter, 1
  mov edx, counter
  MUL edx

  mov esi, firstElement
  ADD esi, eax
  mov ebx, [esi]
  mov eax, placeHolder
  mov [esi], eax
  mov esi, leftIterator
  mov [esi], ebx
  ADD esi, TYPE intArray
LOOP Top

  mov esi, OFFSET intArray
  mov eax, [esi]
  ADD esi, TYPE intArray
  mov ebx, [esi]
  ADD esi, TYPE intArray
  mov ecx, [esi]
  ADD esi, TYPE intArray
  mov edx, [esi]
  ADD esi, TYPE intArray
  mov edi, [esi]
  

INVOKE ExitProcess, 0
main ENDP
END main 
