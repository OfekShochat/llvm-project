; RUN: llc < %s -mtriple=i686--

@bad_char = dso_local global <{ i8, [4294967295 x i8] }> <{ i8 1, [4294967295 x i8] zeroinitializer }>, align 16
@ok_char = dso_local global <{ i8, [4294967294 x i8] }> <{ i8 1, [4294967294 x i8] zeroinitializer }>, align 16
@bad_int = dso_local global <{ i32, [1073741823 x i32] }> <{ i32 1, [1073741823 x i32] zeroinitializer }>, align 16
@ok_int = dso_local global <{ i32, [1073741822 x i32] }> <{ i32 1, [1073741822 x i32] zeroinitializer }>, align 16
