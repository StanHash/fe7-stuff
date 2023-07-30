#pragma once

#include <stdlib.h>
#include <stdint.h>

typedef int8_t    i8;
typedef int16_t   i16;
typedef int32_t   i32;
typedef int64_t   i64;
typedef intptr_t  iptr;
typedef uint8_t   u8;
typedef uint16_t  u16;
typedef uint32_t  u32;
typedef uint64_t  u64;
typedef uintptr_t uptr;
typedef int8_t    bool;

typedef i32 fi8;
typedef i32 fi16;
typedef u32 fu8;
typedef u32 fu16;

struct Vec2
{
    i16 x, y;
};

enum
{
    FALSE,
    TRUE,
};
