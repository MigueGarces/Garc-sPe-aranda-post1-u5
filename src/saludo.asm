; src/saludo.asm - Programa 1: salida de texto en DOS
; Ensamble: nasm -f bin saludo.asm -o ../bin/saludo.com

org 0x100

section .data
    nombre db "Laboratorio 5 - DOSBox y Ensamblador", 0Dh, 0Ah
           db "Miguel Ángel Garcés Peñaranda - 1152432", 0Dh, 0Ah
           db "Unidad 5 - Emuladores y Virtualizacion", 0Dh, 0Ah, "$"

section .text
    mov ah, 09h
    mov dx, nombre
    int 21h
    mov ax, 4C00h
    int 21h