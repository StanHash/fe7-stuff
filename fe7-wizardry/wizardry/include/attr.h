#pragma once

// function attributes

#define OPTIMIZE(o) __attribute__((optimize(o)))
#define CONSTFUNC __attribute__((const))
#define SHORTCALL __attribute__((short_call))
#define ALIAS(n) __attribute__((alias(# n)))

// type attributes

#define PACKED __attribute__((packed))
#define ALIGNED(a) __attribute__((aligned(a)))
