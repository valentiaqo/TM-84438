.class Lio/appium/android/apis/os/MorseCodeConverter;
.super Ljava/lang/Object;
.source "MorseCodeConverter.java"


# static fields
.field static final DASH:J = 0x12cL

.field static final DOT:J = 0x64L

.field private static final ERROR_GAP:[J

.field static final GAP:J = 0x64L

.field private static final LETTERS:[[J

.field static final LETTER_GAP:J = 0x12cL

.field private static final NUMBERS:[[J

.field private static final SPEED_BASE:J = 0x64L

.field static final WORD_GAP:J = 0x2bcL


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x5

    const/16 v6, 0x9

    const/4 v5, 0x7

    .line 29
    const/16 v0, 0x1a

    new-array v0, v0, [[J

    new-array v1, v8, [J

    fill-array-data v1, :array_0

    aput-object v1, v0, v9

    const/4 v1, 0x1

    new-array v2, v5, [J

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v5, [J

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v1, v7, [J

    fill-array-data v1, :array_3

    aput-object v1, v0, v8

    const/4 v1, 0x4

    const/4 v2, 0x1

    new-array v2, v2, [J

    const-wide/16 v3, 0x64

    aput-wide v3, v2, v9

    aput-object v2, v0, v1

    new-array v1, v5, [J

    fill-array-data v1, :array_4

    aput-object v1, v0, v7

    const/4 v1, 0x6

    new-array v2, v7, [J

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    new-array v1, v5, [J

    fill-array-data v1, :array_6

    aput-object v1, v0, v5

    const/16 v1, 0x8

    new-array v2, v8, [J

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    new-array v1, v5, [J

    fill-array-data v1, :array_8

    aput-object v1, v0, v6

    const/16 v1, 0xa

    new-array v2, v7, [J

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v5, [J

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v8, [J

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v8, [J

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v7, [J

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v5, [J

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v5, [J

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v7, [J

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v7, [J

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const/4 v2, 0x1

    new-array v2, v2, [J

    const-wide/16 v3, 0x12c

    aput-wide v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v7, [J

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v5, [J

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v7, [J

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v5, [J

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v5, [J

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v5, [J

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    sput-object v0, Lio/appium/android/apis/os/MorseCodeConverter;->LETTERS:[[J

    .line 59
    const/16 v0, 0xa

    new-array v0, v0, [[J

    new-array v1, v6, [J

    fill-array-data v1, :array_18

    aput-object v1, v0, v9

    const/4 v1, 0x1

    new-array v2, v6, [J

    fill-array-data v2, :array_19

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v6, [J

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    new-array v1, v6, [J

    fill-array-data v1, :array_1b

    aput-object v1, v0, v8

    const/4 v1, 0x4

    new-array v2, v6, [J

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    new-array v1, v6, [J

    fill-array-data v1, :array_1d

    aput-object v1, v0, v7

    const/4 v1, 0x6

    new-array v2, v6, [J

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    new-array v1, v6, [J

    fill-array-data v1, :array_1f

    aput-object v1, v0, v5

    const/16 v1, 0x8

    new-array v2, v6, [J

    fill-array-data v2, :array_20

    aput-object v2, v0, v1

    new-array v1, v6, [J

    fill-array-data v1, :array_21

    aput-object v1, v0, v6

    sput-object v0, Lio/appium/android/apis/os/MorseCodeConverter;->NUMBERS:[[J

    .line 72
    const/4 v0, 0x1

    new-array v0, v0, [J

    const-wide/16 v1, 0x64

    aput-wide v1, v0, v9

    sput-object v0, Lio/appium/android/apis/os/MorseCodeConverter;->ERROR_GAP:[J

    return-void

    .line 29
    :array_0
    .array-data 8
        0x64
        0x64
        0x12c
    .end array-data

    :array_1
    .array-data 8
        0x12c
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
    .end array-data

    :array_2
    .array-data 8
        0x12c
        0x64
        0x64
        0x64
        0x12c
        0x64
        0x64
    .end array-data

    :array_3
    .array-data 8
        0x12c
        0x64
        0x64
        0x64
        0x64
    .end array-data

    :array_4
    .array-data 8
        0x64
        0x64
        0x64
        0x64
        0x12c
        0x64
        0x64
    .end array-data

    :array_5
    .array-data 8
        0x12c
        0x64
        0x12c
        0x64
        0x64
    .end array-data

    :array_6
    .array-data 8
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
    .end array-data

    :array_7
    .array-data 8
        0x64
        0x64
        0x64
    .end array-data

    :array_8
    .array-data 8
        0x64
        0x64
        0x12c
        0x64
        0x12c
        0x64
        0x12c
    .end array-data

    :array_9
    .array-data 8
        0x12c
        0x64
        0x64
        0x64
        0x12c
    .end array-data

    :array_a
    .array-data 8
        0x64
        0x64
        0x12c
        0x64
        0x64
        0x64
        0x64
    .end array-data

    :array_b
    .array-data 8
        0x12c
        0x64
        0x12c
    .end array-data

    :array_c
    .array-data 8
        0x12c
        0x64
        0x64
    .end array-data

    :array_d
    .array-data 8
        0x12c
        0x64
        0x12c
        0x64
        0x12c
    .end array-data

    :array_e
    .array-data 8
        0x64
        0x64
        0x12c
        0x64
        0x12c
        0x64
        0x64
    .end array-data

    :array_f
    .array-data 8
        0x12c
        0x64
        0x12c
        0x64
        0x64
        0x64
        0x12c
    .end array-data

    :array_10
    .array-data 8
        0x64
        0x64
        0x12c
        0x64
        0x64
    .end array-data

    :array_11
    .array-data 8
        0x64
        0x64
        0x64
        0x64
        0x64
    .end array-data

    :array_12
    .array-data 8
        0x64
        0x64
        0x64
        0x64
        0x12c
    .end array-data

    :array_13
    .array-data 8
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x12c
    .end array-data

    :array_14
    .array-data 8
        0x64
        0x64
        0x12c
        0x64
        0x12c
    .end array-data

    :array_15
    .array-data 8
        0x12c
        0x64
        0x64
        0x64
        0x64
        0x64
        0x12c
    .end array-data

    :array_16
    .array-data 8
        0x12c
        0x64
        0x64
        0x64
        0x12c
        0x64
        0x12c
    .end array-data

    :array_17
    .array-data 8
        0x12c
        0x64
        0x12c
        0x64
        0x64
        0x64
        0x64
    .end array-data

    .line 59
    :array_18
    .array-data 8
        0x12c
        0x64
        0x12c
        0x64
        0x12c
        0x64
        0x12c
        0x64
        0x12c
    .end array-data

    :array_19
    .array-data 8
        0x64
        0x64
        0x12c
        0x64
        0x12c
        0x64
        0x12c
        0x64
        0x12c
    .end array-data

    :array_1a
    .array-data 8
        0x64
        0x64
        0x64
        0x64
        0x12c
        0x64
        0x12c
        0x64
        0x12c
    .end array-data

    :array_1b
    .array-data 8
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x12c
        0x64
        0x12c
    .end array-data

    :array_1c
    .array-data 8
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x12c
    .end array-data

    :array_1d
    .array-data 8
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
    .end array-data

    :array_1e
    .array-data 8
        0x12c
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
    .end array-data

    :array_1f
    .array-data 8
        0x12c
        0x64
        0x12c
        0x64
        0x64
        0x64
        0x64
        0x64
        0x64
    .end array-data

    :array_20
    .array-data 8
        0x12c
        0x64
        0x12c
        0x64
        0x12c
        0x64
        0x64
        0x64
        0x64
    .end array-data

    :array_21
    .array-data 8
        0x12c
        0x64
        0x12c
        0x64
        0x12c
        0x64
        0x12c
        0x64
        0x64
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static pattern(C)[J
    .locals 2
    .param p0, "c"    # C

    .prologue
    .line 76
    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    .line 77
    sget-object v0, Lio/appium/android/apis/os/MorseCodeConverter;->LETTERS:[[J

    add-int/lit8 v1, p0, -0x41

    aget-object v0, v0, v1

    .line 86
    :goto_0
    return-object v0

    .line 79
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_1

    .line 80
    sget-object v0, Lio/appium/android/apis/os/MorseCodeConverter;->LETTERS:[[J

    add-int/lit8 v1, p0, -0x61

    aget-object v0, v0, v1

    goto :goto_0

    .line 82
    :cond_1
    const/16 v0, 0x30

    if-lt p0, v0, :cond_2

    const/16 v0, 0x39

    if-gt p0, v0, :cond_2

    .line 83
    sget-object v0, Lio/appium/android/apis/os/MorseCodeConverter;->NUMBERS:[[J

    add-int/lit8 v1, p0, -0x30

    aget-object v0, v0, v1

    goto :goto_0

    .line 86
    :cond_2
    sget-object v0, Lio/appium/android/apis/os/MorseCodeConverter;->ERROR_GAP:[J

    goto :goto_0
.end method

.method static pattern(Ljava/lang/String;)[J
    .locals 11
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 92
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 95
    .local v7, "strlen":I
    const/4 v3, 0x1

    .line 96
    .local v3, "len":I
    const/4 v2, 0x1

    .line 97
    .local v2, "lastWasWhitespace":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_3

    .line 98
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 99
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 100
    if-nez v2, :cond_0

    .line 101
    add-int/lit8 v3, v3, 0x1

    .line 102
    const/4 v2, 0x1

    .line 97
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    :cond_1
    if-nez v2, :cond_2

    .line 106
    add-int/lit8 v3, v3, 0x1

    .line 108
    :cond_2
    const/4 v2, 0x0

    .line 109
    invoke-static {v0}, Lio/appium/android/apis/os/MorseCodeConverter;->pattern(C)[J

    move-result-object v8

    array-length v8, v8

    add-int/2addr v3, v8

    goto :goto_1

    .line 116
    .end local v0    # "c":C
    :cond_3
    add-int/lit8 v8, v3, 0x1

    new-array v6, v8, [J

    .line 117
    .local v6, "result":[J
    const-wide/16 v8, 0x0

    aput-wide v8, v6, v10

    .line 118
    const/4 v5, 0x1

    .line 119
    .local v5, "pos":I
    const/4 v2, 0x1

    .line 120
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v7, :cond_7

    .line 121
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 122
    .restart local v0    # "c":C
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 123
    if-nez v2, :cond_4

    .line 124
    const-wide/16 v8, 0x2bc

    aput-wide v8, v6, v5

    .line 125
    add-int/lit8 v5, v5, 0x1

    .line 126
    const/4 v2, 0x1

    .line 120
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 129
    :cond_5
    if-nez v2, :cond_6

    .line 130
    const-wide/16 v8, 0x12c

    aput-wide v8, v6, v5

    .line 131
    add-int/lit8 v5, v5, 0x1

    .line 133
    :cond_6
    const/4 v2, 0x0

    .line 134
    invoke-static {v0}, Lio/appium/android/apis/os/MorseCodeConverter;->pattern(C)[J

    move-result-object v4

    .line 135
    .local v4, "letter":[J
    array-length v8, v4

    invoke-static {v4, v10, v6, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    array-length v8, v4

    add-int/2addr v5, v8

    goto :goto_3

    .line 139
    .end local v0    # "c":C
    .end local v4    # "letter":[J
    :cond_7
    return-object v6
.end method
