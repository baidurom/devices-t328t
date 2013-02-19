.class final Lcom/htc/gson/JsonParserJavaccTokenManager;
.super Ljava/lang/Object;
.source "JsonParserJavaccTokenManager.java"

# interfaces
.implements Lcom/htc/gson/JsonParserJavaccConstants;


# static fields
.field static final jjbitVec0:[J

.field static final jjbitVec2:[J

.field public static final jjnewLexState:[I

.field static final jjnextStates:[I

.field public static final jjstrLiteralImages:[Ljava/lang/String;

.field static final jjtoMore:[J

.field static final jjtoSkip:[J

.field static final jjtoToken:[J

.field public static final lexStateNames:[Ljava/lang/String;


# instance fields
.field protected curChar:C

.field curLexState:I

.field public debugStream:Ljava/io/PrintStream;

.field defaultLexState:I

.field protected input_stream:Lcom/htc/gson/SimpleCharStream;

.field jjmatchedKind:I

.field jjmatchedPos:I

.field jjnewStateCnt:I

.field jjround:I

.field private final jjrounds:[I

.field private final jjstateSet:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 392
    new-array v0, v6, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjbitVec0:[J

    .line 395
    new-array v0, v6, [J

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjbitVec2:[J

    .line 982
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnextStates:[I

    .line 1003
    const/16 v0, 0x23

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    aput-object v3, v0, v5

    aput-object v3, v0, v7

    const/4 v1, 0x3

    aput-object v3, v0, v1

    aput-object v3, v0, v6

    const/4 v1, 0x5

    aput-object v3, v0, v1

    const/4 v1, 0x6

    aput-object v3, v0, v1

    const/4 v1, 0x7

    const-string v2, "null"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "NaN"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Infinity"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    aput-object v3, v0, v1

    const/16 v1, 0xb

    aput-object v3, v0, v1

    const/16 v1, 0xc

    aput-object v3, v0, v1

    const/16 v1, 0xd

    aput-object v3, v0, v1

    const/16 v1, 0xe

    aput-object v3, v0, v1

    const/16 v1, 0xf

    aput-object v3, v0, v1

    const/16 v1, 0x10

    aput-object v3, v0, v1

    const/16 v1, 0x11

    aput-object v3, v0, v1

    const/16 v1, 0x12

    const-string v2, "\""

    aput-object v2, v0, v1

    const/16 v1, 0x13

    aput-object v3, v0, v1

    const/16 v1, 0x14

    aput-object v3, v0, v1

    const/16 v1, 0x15

    aput-object v3, v0, v1

    const/16 v1, 0x16

    aput-object v3, v0, v1

    const/16 v1, 0x17

    aput-object v3, v0, v1

    const/16 v1, 0x18

    aput-object v3, v0, v1

    const/16 v1, 0x19

    aput-object v3, v0, v1

    const/16 v1, 0x1a

    const-string v2, ")]}\'\n"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "{"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "}"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, ","

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, ":"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "["

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "]"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "-"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "."

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    .line 1014
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "DEFAULT"

    aput-object v1, v0, v4

    const-string v1, "STRING_STATE"

    aput-object v1, v0, v5

    const-string v1, "ESC_STATE"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "HEX_STATE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->lexStateNames:[Ljava/lang/String;

    .line 1026
    const/16 v0, 0x23

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewLexState:[I

    .line 1030
    new-array v0, v5, [J

    const-wide v1, 0x7fe775fe1L

    aput-wide v1, v0, v4

    sput-object v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjtoToken:[J

    .line 1033
    new-array v0, v5, [J

    const-wide/16 v1, 0x1e

    aput-wide v1, v0, v4

    sput-object v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjtoSkip:[J

    .line 1036
    new-array v0, v5, [J

    const-wide/32 v1, 0x880000

    aput-wide v1, v0, v4

    sput-object v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjtoMore:[J

    return-void

    .line 392
    nop

    :array_0
    .array-data 0x8
        0xfet 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 395
    :array_1
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 982
    :array_2
    .array-data 0x4
        0x1dt 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
    .end array-data

    .line 1026
    :array_3
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x1t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>(Lcom/htc/gson/SimpleCharStream;)V
    .locals 2
    .parameter "stream"

    .prologue
    const/4 v1, 0x0

    .line 1052
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->debugStream:Ljava/io/PrintStream;

    .line 1044
    const/16 v0, 0x2b

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjrounds:[I

    .line 1045
    const/16 v0, 0x56

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    .line 1136
    iput v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curLexState:I

    .line 1137
    iput v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->defaultLexState:I

    .line 1055
    iput-object p1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    .line 1056
    return-void
.end method

.method public constructor <init>(Lcom/htc/gson/SimpleCharStream;I)V
    .locals 0
    .parameter "stream"
    .parameter "lexState"

    .prologue
    .line 1060
    invoke-direct {p0, p1}, Lcom/htc/gson/JsonParserJavaccTokenManager;-><init>(Lcom/htc/gson/SimpleCharStream;)V

    .line 1061
    invoke-virtual {p0, p2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->SwitchTo(I)V

    .line 1062
    return-void
.end method

.method private ReInitRounds()V
    .locals 4

    .prologue
    .line 1079
    const v2, -0x7fffffff

    iput v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjround:I

    .line 1080
    const/16 v0, 0x2b

    .local v0, i:I
    move v1, v0

    .end local v0           #i:I
    .local v1, i:I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    if-lez v1, :cond_0

    .line 1081
    iget-object v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjrounds:[I

    const/high16 v3, -0x8000

    aput v3, v2, v0

    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 1082
    .end local v1           #i:I
    .restart local v0       #i:I
    :cond_0
    return-void
.end method

.method private jjAddStates(II)V
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1259
    :goto_0
    iget-object v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    iget v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    sget-object v3, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnextStates:[I

    aget v3, v3, p1

    aput v3, v1, v2

    .line 1260
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, start:I
    if-ne p1, p2, :cond_0

    .line 1261
    return-void

    :cond_0
    move p1, v0

    .end local v0           #start:I
    .restart local p1
    goto :goto_0
.end method

.method private static final jjCanMove_0(IIIJJ)Z
    .locals 6
    .parameter "hiByte"
    .parameter "i1"
    .parameter "i2"
    .parameter "l1"
    .parameter "l2"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 987
    packed-switch p0, :pswitch_data_0

    .line 992
    sget-object v2, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjbitVec0:[J

    aget-wide v2, v2, p1

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 994
    :cond_0
    :goto_0
    return v0

    .line 990
    :pswitch_0
    sget-object v2, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjbitVec2:[J

    aget-wide v2, v2, p2

    and-long/2addr v2, p5

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 994
    goto :goto_0

    .line 987
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private jjCheckNAdd(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjrounds:[I

    aget v0, v0, p1

    iget v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjround:I

    if-eq v0, v1, :cond_0

    .line 1252
    iget-object v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    iget v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    aput p1, v0, v1

    .line 1253
    iget-object v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjrounds:[I

    iget v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjround:I

    aput v1, v0, p1

    .line 1255
    :cond_0
    return-void
.end method

.method private jjCheckNAddStates(II)V
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1271
    :goto_0
    sget-object v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnextStates:[I

    aget v1, v1, p1

    invoke-direct {p0, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAdd(I)V

    .line 1272
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, start:I
    if-ne p1, p2, :cond_0

    .line 1273
    return-void

    :cond_0
    move p1, v0

    .end local v0           #start:I
    .restart local p1
    goto :goto_0
.end method

.method private jjCheckNAddTwoStates(II)V
    .locals 0
    .parameter "state1"
    .parameter "state2"

    .prologue
    .line 1264
    invoke-direct {p0, p1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAdd(I)V

    .line 1265
    invoke-direct {p0, p2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAdd(I)V

    .line 1266
    return-void
.end method

.method private jjMoveNfa_0(II)I
    .locals 19
    .parameter "startState"
    .parameter "curPos"

    .prologue
    .line 400
    const/4 v14, 0x0

    .line 401
    .local v14, startsAt:I
    const/16 v15, 0x2b

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    .line 402
    const/4 v10, 0x1

    .line 403
    .local v10, i:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    const/16 v16, 0x0

    aput p1, v15, v16

    .line 404
    const v11, 0x7fffffff

    .line 407
    .local v11, kind:I
    :goto_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjround:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjround:I

    const v16, 0x7fffffff

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 408
    invoke-direct/range {p0 .. p0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->ReInitRounds()V

    .line 409
    :cond_0
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x40

    move/from16 v0, v16

    if-ge v15, v0, :cond_d

    .line 411
    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    move/from16 v17, v0

    shl-long v12, v15, v17

    .line 414
    .local v12, l:J
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    add-int/lit8 v10, v10, -0x1

    aget v15, v15, v10

    packed-switch v15, :pswitch_data_0

    .line 554
    :cond_2
    :goto_1
    :pswitch_0
    if-ne v10, v14, :cond_1

    .line 771
    .end local v12           #l:J
    :goto_2
    const v15, 0x7fffffff

    if-eq v11, v15, :cond_3

    .line 773
    move-object/from16 v0, p0

    iput v11, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    .line 774
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    .line 775
    const v11, 0x7fffffff

    .line 777
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 778
    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v14, v14, 0x2b

    if-ne v10, v14, :cond_1f

    .line 781
    :goto_3
    return p2

    .line 417
    .restart local v12       #l:J
    :pswitch_1
    const-wide v15, -0x400002401L

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_4

    .line 418
    const/4 v15, 0x0

    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto :goto_1

    .line 419
    :cond_4
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x22

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 421
    const/16 v15, 0x11

    if-le v11, v15, :cond_2

    .line 422
    const/16 v11, 0x11

    goto :goto_1

    .line 426
    :pswitch_2
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_6

    .line 428
    const/4 v15, 0x6

    if-le v11, v15, :cond_5

    .line 429
    const/4 v11, 0x6

    .line 430
    :cond_5
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 432
    :cond_6
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x22

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 433
    const/4 v15, 0x0

    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto :goto_1

    .line 434
    :cond_7
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x27

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 435
    const/4 v15, 0x4

    const/16 v16, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    .line 438
    :pswitch_3
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 440
    const/4 v15, 0x6

    if-le v11, v15, :cond_8

    .line 441
    const/4 v11, 0x6

    .line 442
    :cond_8
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    .line 445
    :pswitch_4
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 447
    const/16 v15, 0xb

    if-le v11, v15, :cond_9

    .line 448
    const/16 v11, 0xb

    .line 449
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0xa

    aput v17, v15, v16

    goto/16 :goto_1

    .line 452
    :pswitch_5
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 453
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0xd

    aput v17, v15, v16

    goto/16 :goto_1

    .line 456
    :pswitch_6
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 457
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0xe

    aput v17, v15, v16

    goto/16 :goto_1

    .line 460
    :pswitch_7
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 461
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0xf

    aput v17, v15, v16

    goto/16 :goto_1

    .line 464
    :pswitch_8
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    const/16 v15, 0xe

    if-le v11, v15, :cond_2

    .line 465
    const/16 v11, 0xe

    goto/16 :goto_1

    .line 468
    :pswitch_9
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x27

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 469
    const/4 v15, 0x4

    const/16 v16, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    .line 472
    :pswitch_a
    const-wide v15, -0x8000002401L

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 473
    const/4 v15, 0x4

    const/16 v16, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    .line 476
    :pswitch_b
    const-wide v15, 0x808400000000L

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 477
    const/4 v15, 0x4

    const/16 v16, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    .line 480
    :pswitch_c
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 481
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x17

    aput v17, v15, v16

    goto/16 :goto_1

    .line 484
    :pswitch_d
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 485
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x18

    aput v17, v15, v16

    goto/16 :goto_1

    .line 488
    :pswitch_e
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 489
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x19

    aput v17, v15, v16

    goto/16 :goto_1

    .line 492
    :pswitch_f
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 493
    const/4 v15, 0x4

    const/16 v16, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    .line 496
    :pswitch_10
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x27

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    const/16 v15, 0x10

    if-le v11, v15, :cond_2

    .line 497
    const/16 v11, 0x10

    goto/16 :goto_1

    .line 500
    :pswitch_11
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x22

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 501
    const/4 v15, 0x0

    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    .line 504
    :pswitch_12
    const-wide v15, -0x400002401L

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 505
    const/4 v15, 0x0

    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    .line 508
    :pswitch_13
    const-wide v15, 0x808400000000L

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 509
    const/4 v15, 0x0

    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    .line 512
    :pswitch_14
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 513
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x22

    aput v17, v15, v16

    goto/16 :goto_1

    .line 516
    :pswitch_15
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 517
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x23

    aput v17, v15, v16

    goto/16 :goto_1

    .line 520
    :pswitch_16
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 521
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x24

    aput v17, v15, v16

    goto/16 :goto_1

    .line 524
    :pswitch_17
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 525
    const/4 v15, 0x0

    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_1

    .line 528
    :pswitch_18
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x22

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    const/16 v15, 0x11

    if-le v11, v15, :cond_2

    .line 529
    const/16 v11, 0x11

    goto/16 :goto_1

    .line 532
    :pswitch_19
    const-wide v15, 0x3ff280000000000L

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 534
    const/4 v15, 0x5

    if-le v11, v15, :cond_a

    .line 535
    const/4 v11, 0x5

    .line 536
    :cond_a
    const/16 v15, 0x29

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    .line 539
    :pswitch_1a
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 541
    const/4 v15, 0x5

    if-le v11, v15, :cond_b

    .line 542
    const/4 v11, 0x5

    .line 543
    :cond_b
    const/16 v15, 0x29

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    .line 546
    :pswitch_1b
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 548
    const/16 v15, 0xc

    if-le v11, v15, :cond_c

    .line 549
    const/16 v11, 0xc

    .line 550
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x2a

    aput v17, v15, v16

    goto/16 :goto_1

    .line 556
    .end local v12           #l:J
    :cond_d
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x80

    move/from16 v0, v16

    if-ge v15, v0, :cond_1c

    .line 558
    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x3f

    shl-long v12, v15, v17

    .line 561
    .restart local v12       #l:J
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    add-int/lit8 v10, v10, -0x1

    aget v15, v15, v10

    packed-switch v15, :pswitch_data_1

    .line 745
    :cond_f
    :goto_4
    :pswitch_1c
    if-ne v10, v14, :cond_e

    goto/16 :goto_2

    .line 564
    :pswitch_1d
    const-wide/32 v15, -0x10000001

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_11

    .line 565
    const/4 v15, 0x0

    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    .line 568
    :cond_10
    :goto_5
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x5c

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 569
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x1f

    aput v17, v15, v16

    goto :goto_4

    .line 566
    :cond_11
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x5c

    move/from16 v0, v16

    if-ne v15, v0, :cond_10

    .line 567
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x20

    aput v17, v15, v16

    goto :goto_5

    .line 572
    :pswitch_1e
    const-wide v15, 0x7ffffde87ffffdeL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_14

    .line 574
    const/16 v15, 0xb

    if-le v11, v15, :cond_12

    .line 575
    const/16 v11, 0xb

    .line 576
    :cond_12
    const/16 v15, 0xa

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAdd(I)V

    .line 586
    :cond_13
    :goto_6
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x66

    move/from16 v0, v16

    if-ne v15, v0, :cond_17

    .line 587
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x7

    aput v17, v15, v16

    goto/16 :goto_4

    .line 578
    :cond_14
    const-wide v15, 0x2000000020L

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_16

    .line 580
    const/16 v15, 0xc

    if-le v11, v15, :cond_15

    .line 581
    const/16 v11, 0xc

    .line 582
    :cond_15
    const/16 v15, 0x28

    const/16 v16, 0x2a

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddTwoStates(II)V

    goto :goto_6

    .line 584
    :cond_16
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x5c

    move/from16 v0, v16

    if-ne v15, v0, :cond_13

    .line 585
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0xb

    aput v17, v15, v16

    goto :goto_6

    .line 588
    :cond_17
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x74

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 589
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x3

    aput v17, v15, v16

    goto/16 :goto_4

    .line 592
    :pswitch_1f
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x65

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    const/16 v15, 0xa

    if-le v11, v15, :cond_f

    .line 593
    const/16 v11, 0xa

    goto/16 :goto_4

    .line 596
    :pswitch_20
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x75

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 597
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_4

    .line 600
    :pswitch_21
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x72

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 601
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x2

    aput v17, v15, v16

    goto/16 :goto_4

    .line 604
    :pswitch_22
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x73

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 605
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_4

    .line 608
    :pswitch_23
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x6c

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 609
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x5

    aput v17, v15, v16

    goto/16 :goto_4

    .line 612
    :pswitch_24
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x61

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 613
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x6

    aput v17, v15, v16

    goto/16 :goto_4

    .line 616
    :pswitch_25
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x66

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 617
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x7

    aput v17, v15, v16

    goto/16 :goto_4

    .line 620
    :pswitch_26
    const-wide v15, 0x7ffffde87ffffdeL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 622
    const/16 v15, 0xb

    if-le v11, v15, :cond_18

    .line 623
    const/16 v11, 0xb

    .line 624
    :cond_18
    const/16 v15, 0xa

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_4

    .line 627
    :pswitch_27
    const-wide v15, 0x7fffffe87fffffeL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 629
    const/16 v15, 0xb

    if-le v11, v15, :cond_19

    .line 630
    const/16 v11, 0xb

    .line 631
    :cond_19
    const/16 v15, 0xa

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_4

    .line 634
    :pswitch_28
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x75

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 635
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0xc

    aput v17, v15, v16

    goto/16 :goto_4

    .line 638
    :pswitch_29
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 639
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0xd

    aput v17, v15, v16

    goto/16 :goto_4

    .line 642
    :pswitch_2a
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 643
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0xe

    aput v17, v15, v16

    goto/16 :goto_4

    .line 646
    :pswitch_2b
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 647
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0xf

    aput v17, v15, v16

    goto/16 :goto_4

    .line 650
    :pswitch_2c
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    const/16 v15, 0xe

    if-le v11, v15, :cond_f

    .line 651
    const/16 v11, 0xe

    goto/16 :goto_4

    .line 654
    :pswitch_2d
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x5c

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 655
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0xb

    aput v17, v15, v16

    goto/16 :goto_4

    .line 658
    :pswitch_2e
    const-wide/32 v15, -0x10000001

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 659
    const/4 v15, 0x4

    const/16 v16, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_4

    .line 662
    :pswitch_2f
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x5c

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 663
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x14

    aput v17, v15, v16

    goto/16 :goto_4

    .line 666
    :pswitch_30
    const-wide v15, 0x14404410000000L

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 667
    const/4 v15, 0x4

    const/16 v16, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_4

    .line 670
    :pswitch_31
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x75

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 671
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x16

    aput v17, v15, v16

    goto/16 :goto_4

    .line 674
    :pswitch_32
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 675
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x17

    aput v17, v15, v16

    goto/16 :goto_4

    .line 678
    :pswitch_33
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 679
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x18

    aput v17, v15, v16

    goto/16 :goto_4

    .line 682
    :pswitch_34
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 683
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x19

    aput v17, v15, v16

    goto/16 :goto_4

    .line 686
    :pswitch_35
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 687
    const/4 v15, 0x4

    const/16 v16, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_4

    .line 690
    :pswitch_36
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x5c

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 691
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x15

    aput v17, v15, v16

    goto/16 :goto_4

    .line 694
    :pswitch_37
    const-wide/32 v15, -0x10000001

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 695
    const/4 v15, 0x0

    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_4

    .line 698
    :pswitch_38
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x5c

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 699
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x1f

    aput v17, v15, v16

    goto/16 :goto_4

    .line 702
    :pswitch_39
    const-wide v15, 0x14404410000000L

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 703
    const/4 v15, 0x0

    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_4

    .line 706
    :pswitch_3a
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x75

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 707
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x21

    aput v17, v15, v16

    goto/16 :goto_4

    .line 710
    :pswitch_3b
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 711
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x22

    aput v17, v15, v16

    goto/16 :goto_4

    .line 714
    :pswitch_3c
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 715
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x23

    aput v17, v15, v16

    goto/16 :goto_4

    .line 718
    :pswitch_3d
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 719
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x24

    aput v17, v15, v16

    goto/16 :goto_4

    .line 722
    :pswitch_3e
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 723
    const/4 v15, 0x0

    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto/16 :goto_4

    .line 726
    :pswitch_3f
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x5c

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    .line 727
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x20

    aput v17, v15, v16

    goto/16 :goto_4

    .line 730
    :pswitch_40
    const-wide v15, 0x2000000020L

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 732
    const/16 v15, 0xc

    if-le v11, v15, :cond_1a

    .line 733
    const/16 v11, 0xc

    .line 734
    :cond_1a
    const/16 v15, 0x28

    const/16 v16, 0x2a

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_4

    .line 737
    :pswitch_41
    const-wide v15, 0x7fffffe87fffffeL

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_f

    .line 739
    const/16 v15, 0xc

    if-le v11, v15, :cond_1b

    .line 740
    const/16 v11, 0xc

    .line 741
    :cond_1b
    const/16 v15, 0x2a

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_4

    .line 749
    .end local v12           #l:J
    :cond_1c
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    shr-int/lit8 v2, v15, 0x8

    .line 750
    .local v2, hiByte:I
    shr-int/lit8 v3, v2, 0x6

    .line 751
    .local v3, i1:I
    const-wide/16 v15, 0x1

    and-int/lit8 v17, v2, 0x3f

    shl-long v5, v15, v17

    .line 752
    .local v5, l1:J
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    and-int/lit16 v15, v15, 0xff

    shr-int/lit8 v4, v15, 0x6

    .line 753
    .local v4, i2:I
    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x3f

    shl-long v7, v15, v17

    .line 756
    .local v7, l2:J
    :cond_1d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    add-int/lit8 v10, v10, -0x1

    aget v15, v15, v10

    sparse-switch v15, :sswitch_data_0

    .line 769
    :cond_1e
    :goto_7
    if-ne v10, v14, :cond_1d

    goto/16 :goto_2

    .line 760
    :sswitch_0
    invoke-static/range {v2 .. v8}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v15

    if-eqz v15, :cond_1e

    .line 761
    const/4 v15, 0x0

    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCheckNAddStates(II)V

    goto :goto_7

    .line 764
    :sswitch_1
    invoke-static/range {v2 .. v8}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v15

    if-eqz v15, :cond_1e

    .line 765
    const/4 v15, 0x4

    const/16 v16, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjAddStates(II)V

    goto :goto_7

    .line 780
    .end local v2           #hiByte:I
    .end local v3           #i1:I
    .end local v4           #i2:I
    .end local v5           #l1:J
    .end local v7           #l2:J
    :cond_1f
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v15}, Lcom/htc/gson/SimpleCharStream;->readChar()C

    move-result v15

    move-object/from16 v0, p0

    iput-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 781
    :catch_0
    move-exception v9

    .local v9, e:Ljava/io/IOException;
    goto/16 :goto_3

    .line 414
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_13
        :pswitch_0
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_0
        :pswitch_18
        :pswitch_0
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1
    .end packed-switch

    .line 561
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_1e
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_1c
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_1c
        :pswitch_1c
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_1c
        :pswitch_40
        :pswitch_1c
        :pswitch_1c
        :pswitch_41
        :pswitch_1d
    .end packed-switch

    .line 756
    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_1
        0x1d -> :sswitch_0
        0x2b -> :sswitch_0
    .end sparse-switch
.end method

.method private jjMoveNfa_1(II)I
    .locals 19
    .parameter "startState"
    .parameter "curPos"

    .prologue
    .line 899
    const/4 v14, 0x0

    .line 900
    .local v14, startsAt:I
    const/4 v15, 0x2

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    .line 901
    const/4 v10, 0x1

    .line 902
    .local v10, i:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    const/16 v16, 0x0

    aput p1, v15, v16

    .line 903
    const v11, 0x7fffffff

    .line 906
    .local v11, kind:I
    :goto_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjround:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjround:I

    const v16, 0x7fffffff

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 907
    invoke-direct/range {p0 .. p0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->ReInitRounds()V

    .line 908
    :cond_0
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x40

    move/from16 v0, v16

    if-ge v15, v0, :cond_5

    .line 910
    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    move/from16 v17, v0

    shl-long v12, v15, v17

    .line 913
    .local v12, l:J
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    add-int/lit8 v10, v10, -0x1

    aget v15, v15, v10

    packed-switch v15, :pswitch_data_0

    .line 933
    :cond_2
    :goto_1
    if-ne v10, v14, :cond_1

    .line 969
    .end local v12           #l:J
    :goto_2
    const v15, 0x7fffffff

    if-eq v11, v15, :cond_3

    .line 971
    move-object/from16 v0, p0

    iput v11, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    .line 972
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    .line 973
    const v11, 0x7fffffff

    .line 975
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 976
    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v14, v14, 0x2

    if-ne v10, v14, :cond_b

    .line 979
    :goto_3
    return p2

    .line 916
    .restart local v12       #l:J
    :pswitch_0
    const-wide v15, -0x400000001L

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_4

    .line 918
    const/16 v15, 0x15

    if-le v11, v15, :cond_2

    .line 919
    const/16 v11, 0x15

    goto :goto_1

    .line 921
    :cond_4
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x22

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 923
    const/16 v15, 0x14

    if-le v11, v15, :cond_2

    .line 924
    const/16 v11, 0x14

    goto :goto_1

    .line 928
    :pswitch_1
    const-wide v15, -0x400000001L

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 929
    const/16 v11, 0x15

    goto :goto_1

    .line 935
    .end local v12           #l:J
    :cond_5
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x80

    move/from16 v0, v16

    if-ge v15, v0, :cond_8

    .line 937
    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x3f

    shl-long v12, v15, v17

    .line 940
    .restart local v12       #l:J
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    add-int/lit8 v10, v10, -0x1

    aget v15, v15, v10

    packed-switch v15, :pswitch_data_1

    .line 948
    :cond_7
    :goto_4
    if-ne v10, v14, :cond_6

    goto :goto_2

    .line 943
    :pswitch_2
    const-wide/32 v15, -0x10000001

    and-long/2addr v15, v12

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_7

    .line 944
    const/16 v11, 0x15

    goto :goto_4

    .line 952
    .end local v12           #l:J
    :cond_8
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    shr-int/lit8 v2, v15, 0x8

    .line 953
    .local v2, hiByte:I
    shr-int/lit8 v3, v2, 0x6

    .line 954
    .local v3, i1:I
    const-wide/16 v15, 0x1

    and-int/lit8 v17, v2, 0x3f

    shl-long v5, v15, v17

    .line 955
    .local v5, l1:J
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    and-int/lit16 v15, v15, 0xff

    shr-int/lit8 v4, v15, 0x6

    .line 956
    .local v4, i2:I
    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x3f

    shl-long v7, v15, v17

    .line 959
    .local v7, l2:J
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    add-int/lit8 v10, v10, -0x1

    aget v15, v15, v10

    packed-switch v15, :pswitch_data_2

    .line 967
    :cond_a
    :goto_5
    if-ne v10, v14, :cond_9

    goto/16 :goto_2

    .line 962
    :pswitch_3
    invoke-static/range {v2 .. v8}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v15

    if-eqz v15, :cond_a

    const/16 v15, 0x15

    if-le v11, v15, :cond_a

    .line 963
    const/16 v11, 0x15

    goto :goto_5

    .line 978
    .end local v2           #hiByte:I
    .end local v3           #i1:I
    .end local v4           #i2:I
    .end local v5           #l1:J
    .end local v7           #l2:J
    :cond_b
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v15}, Lcom/htc/gson/SimpleCharStream;->readChar()C

    move-result v15

    move-object/from16 v0, p0

    iput-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 979
    :catch_0
    move-exception v9

    .local v9, e:Ljava/io/IOException;
    goto/16 :goto_3

    .line 913
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 940
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    .line 959
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method private jjMoveNfa_2(II)I
    .locals 19
    .parameter "startState"
    .parameter "curPos"

    .prologue
    .line 808
    const/4 v14, 0x0

    .line 809
    .local v14, startsAt:I
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    .line 810
    const/4 v4, 0x1

    .line 811
    .local v4, i:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    const/16 v16, 0x0

    aput p1, v15, v16

    .line 812
    const v7, 0x7fffffff

    .line 815
    .local v7, kind:I
    :goto_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjround:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjround:I

    const v16, 0x7fffffff

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 816
    invoke-direct/range {p0 .. p0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->ReInitRounds()V

    .line 817
    :cond_0
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x40

    move/from16 v0, v16

    if-ge v15, v0, :cond_4

    .line 819
    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    move/from16 v17, v0

    shl-long v8, v15, v17

    .line 822
    .local v8, l:J
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    add-int/lit8 v4, v4, -0x1

    aget v15, v15, v4

    packed-switch v15, :pswitch_data_0

    .line 830
    :cond_2
    :goto_1
    if-ne v4, v14, :cond_1

    .line 862
    .end local v8           #l:J
    :goto_2
    const v15, 0x7fffffff

    if-eq v7, v15, :cond_3

    .line 864
    move-object/from16 v0, p0

    iput v7, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    .line 865
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    .line 866
    const v7, 0x7fffffff

    .line 868
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 869
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v14, v14, 0x1

    if-ne v4, v14, :cond_9

    .line 872
    :goto_3
    return p2

    .line 825
    .restart local v8       #l:J
    :pswitch_0
    const-wide v15, 0x800400000000L

    and-long/2addr v15, v8

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 826
    const/16 v7, 0x16

    goto :goto_1

    .line 832
    .end local v8           #l:J
    :cond_4
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x80

    move/from16 v0, v16

    if-ge v15, v0, :cond_7

    .line 834
    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x3f

    shl-long v8, v15, v17

    .line 837
    .restart local v8       #l:J
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    add-int/lit8 v4, v4, -0x1

    aget v15, v15, v4

    packed-switch v15, :pswitch_data_1

    .line 845
    :cond_6
    :goto_4
    if-ne v4, v14, :cond_5

    goto :goto_2

    .line 840
    :pswitch_1
    const-wide v15, 0x14404410000000L

    and-long/2addr v15, v8

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_6

    .line 841
    const/16 v7, 0x16

    goto :goto_4

    .line 849
    .end local v8           #l:J
    :cond_7
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    shr-int/lit8 v3, v15, 0x8

    .line 850
    .local v3, hiByte:I
    shr-int/lit8 v5, v3, 0x6

    .line 851
    .local v5, i1:I
    const-wide/16 v15, 0x1

    and-int/lit8 v17, v3, 0x3f

    shl-long v10, v15, v17

    .line 852
    .local v10, l1:J
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    and-int/lit16 v15, v15, 0xff

    shr-int/lit8 v6, v15, 0x6

    .line 853
    .local v6, i2:I
    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x3f

    shl-long v12, v15, v17

    .line 856
    .local v12, l2:J
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    add-int/lit8 v4, v4, -0x1

    aget v15, v15, v4

    .line 860
    if-ne v4, v14, :cond_8

    goto/16 :goto_2

    .line 871
    .end local v3           #hiByte:I
    .end local v5           #i1:I
    .end local v6           #i2:I
    .end local v10           #l1:J
    .end local v12           #l2:J
    :cond_9
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v15}, Lcom/htc/gson/SimpleCharStream;->readChar()C

    move-result v15

    move-object/from16 v0, p0

    iput-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 872
    :catch_0
    move-exception v2

    .local v2, e:Ljava/io/IOException;
    goto :goto_3

    .line 822
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 837
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private jjMoveNfa_3(II)I
    .locals 19
    .parameter "startState"
    .parameter "curPos"

    .prologue
    .line 30
    const/4 v14, 0x0

    .line 31
    .local v14, startsAt:I
    const/4 v15, 0x4

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    .line 32
    const/4 v4, 0x1

    .line 33
    .local v4, i:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    const/16 v16, 0x0

    aput p1, v15, v16

    .line 34
    const v7, 0x7fffffff

    .line 37
    .local v7, kind:I
    :goto_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjround:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjround:I

    const v16, 0x7fffffff

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 38
    invoke-direct/range {p0 .. p0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->ReInitRounds()V

    .line 39
    :cond_0
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x40

    move/from16 v0, v16

    if-ge v15, v0, :cond_4

    .line 41
    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    move/from16 v17, v0

    shl-long v8, v15, v17

    .line 44
    .local v8, l:J
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    add-int/lit8 v4, v4, -0x1

    aget v15, v15, v4

    packed-switch v15, :pswitch_data_0

    .line 64
    :cond_2
    :goto_1
    if-ne v4, v14, :cond_1

    .line 108
    .end local v8           #l:J
    :goto_2
    const v15, 0x7fffffff

    if-eq v7, v15, :cond_3

    .line 110
    move-object/from16 v0, p0

    iput v7, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    .line 111
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    .line 112
    const v7, 0x7fffffff

    .line 114
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 115
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v14, v14, 0x4

    if-ne v4, v14, :cond_9

    .line 118
    :goto_3
    return p2

    .line 47
    .restart local v8       #l:J
    :pswitch_0
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v8

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 48
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x1

    aput v17, v15, v16

    goto :goto_1

    .line 51
    :pswitch_1
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v8

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 52
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x2

    aput v17, v15, v16

    goto :goto_1

    .line 55
    :pswitch_2
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v8

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    .line 56
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x3

    aput v17, v15, v16

    goto/16 :goto_1

    .line 59
    :pswitch_3
    const-wide/high16 v15, 0x3ff

    and-long/2addr v15, v8

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_2

    const/16 v15, 0x19

    if-le v7, v15, :cond_2

    .line 60
    const/16 v7, 0x19

    goto/16 :goto_1

    .line 66
    .end local v8           #l:J
    :cond_4
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v16, 0x80

    move/from16 v0, v16

    if-ge v15, v0, :cond_7

    .line 68
    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x3f

    shl-long v8, v15, v17

    .line 71
    .restart local v8       #l:J
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    add-int/lit8 v4, v4, -0x1

    aget v15, v15, v4

    packed-switch v15, :pswitch_data_1

    .line 91
    :cond_6
    :goto_4
    if-ne v4, v14, :cond_5

    goto/16 :goto_2

    .line 74
    :pswitch_4
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v8

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_6

    .line 75
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x1

    aput v17, v15, v16

    goto :goto_4

    .line 78
    :pswitch_5
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v8

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_6

    .line 79
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x2

    aput v17, v15, v16

    goto :goto_4

    .line 82
    :pswitch_6
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v8

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_6

    .line 83
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    move/from16 v16, v0

    add-int/lit8 v17, v16, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    const/16 v17, 0x3

    aput v17, v15, v16

    goto :goto_4

    .line 86
    :pswitch_7
    const-wide v15, 0x7e0000007eL

    and-long/2addr v15, v8

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_6

    const/16 v15, 0x19

    if-le v7, v15, :cond_6

    .line 87
    const/16 v7, 0x19

    goto :goto_4

    .line 95
    .end local v8           #l:J
    :cond_7
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    shr-int/lit8 v3, v15, 0x8

    .line 96
    .local v3, hiByte:I
    shr-int/lit8 v5, v3, 0x6

    .line 97
    .local v5, i1:I
    const-wide/16 v15, 0x1

    and-int/lit8 v17, v3, 0x3f

    shl-long v10, v15, v17

    .line 98
    .local v10, l1:J
    move-object/from16 v0, p0

    iget-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    and-int/lit16 v15, v15, 0xff

    shr-int/lit8 v6, v15, 0x6

    .line 99
    .local v6, i2:I
    const-wide/16 v15, 0x1

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x3f

    shl-long v12, v15, v17

    .line 102
    .local v12, l2:J
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstateSet:[I

    add-int/lit8 v4, v4, -0x1

    aget v15, v15, v4

    .line 106
    if-ne v4, v14, :cond_8

    goto/16 :goto_2

    .line 117
    .end local v3           #hiByte:I
    .end local v5           #i1:I
    .end local v6           #i2:I
    .end local v10           #l1:J
    .end local v12           #l2:J
    :cond_9
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v15}, Lcom/htc/gson/SimpleCharStream;->readChar()C

    move-result v15

    move-object/from16 v0, p0

    iput-char v15, v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 118
    :catch_0
    move-exception v2

    .local v2, e:Ljava/io/IOException;
    goto/16 :goto_3

    .line 44
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 71
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa0_0()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 202
    iget-char v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_0

    .line 231
    const/4 v0, 0x4

    invoke-direct {p0, v0, v2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    :goto_0
    return v0

    .line 205
    :sswitch_0
    const/16 v0, 0x12

    const/16 v1, 0x2b

    invoke-direct {p0, v2, v0, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_0

    .line 207
    :sswitch_1
    const-wide/32 v0, 0x4000000

    invoke-direct {p0, v0, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    .line 209
    :sswitch_2
    const/16 v0, 0x1d

    invoke-direct {p0, v2, v0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 211
    :sswitch_3
    const/16 v0, 0x21

    invoke-direct {p0, v2, v0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 213
    :sswitch_4
    const/16 v0, 0x22

    invoke-direct {p0, v2, v0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 215
    :sswitch_5
    const/16 v0, 0x1e

    invoke-direct {p0, v2, v0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 217
    :sswitch_6
    const-wide/16 v0, 0x200

    invoke-direct {p0, v0, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    .line 219
    :sswitch_7
    const-wide/16 v0, 0x100

    invoke-direct {p0, v0, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    .line 221
    :sswitch_8
    const/16 v0, 0x1f

    invoke-direct {p0, v2, v0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 223
    :sswitch_9
    const/16 v0, 0x20

    invoke-direct {p0, v2, v0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 225
    :sswitch_a
    const-wide/16 v0, 0x80

    invoke-direct {p0, v0, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_0

    .line 227
    :sswitch_b
    const/16 v0, 0x1b

    invoke-direct {p0, v2, v0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 229
    :sswitch_c
    const/16 v0, 0x1c

    invoke-direct {p0, v2, v0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 202
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x29 -> :sswitch_1
        0x2c -> :sswitch_2
        0x2d -> :sswitch_3
        0x2e -> :sswitch_4
        0x3a -> :sswitch_5
        0x49 -> :sswitch_6
        0x4e -> :sswitch_7
        0x5b -> :sswitch_8
        0x5d -> :sswitch_9
        0x6e -> :sswitch_a
        0x7b -> :sswitch_b
        0x7d -> :sswitch_c
    .end sparse-switch
.end method

.method private jjMoveStringLiteralDfa0_1()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 889
    iget-char v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    .line 894
    invoke-direct {p0, v1, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    :goto_0
    return v0

    .line 892
    :pswitch_0
    const/16 v0, 0x13

    invoke-direct {p0, v1, v0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 889
    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_0
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa0_2()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 798
    iget-char v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    .line 803
    invoke-direct {p0, v1, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    :goto_0
    return v0

    .line 801
    :pswitch_0
    const/16 v0, 0x17

    invoke-direct {p0, v1, v0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 798
    :pswitch_data_0
    .packed-switch 0x75
        :pswitch_0
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa0_3()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, v0, v0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveNfa_3(II)I

    move-result v0

    return v0
.end method

.method private jjMoveStringLiteralDfa1_0(J)I
    .locals 3
    .parameter "active0"

    .prologue
    const/4 v2, 0x0

    .line 236
    :try_start_0
    iget-object v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/gson/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    iget-char v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    sparse-switch v1, :sswitch_data_0

    .line 254
    invoke-direct {p0, v2, p1, p2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    :goto_0
    return v1

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0, v2, p1, p2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    .line 239
    const/4 v1, 0x1

    goto :goto_0

    .line 244
    .end local v0           #e:Ljava/io/IOException;
    :sswitch_0
    const-wide/32 v1, 0x4000000

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    .line 246
    :sswitch_1
    const-wide/16 v1, 0x100

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    .line 248
    :sswitch_2
    const-wide/16 v1, 0x200

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    .line 250
    :sswitch_3
    const-wide/16 v1, 0x80

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v1

    goto :goto_0

    .line 241
    :sswitch_data_0
    .sparse-switch
        0x5d -> :sswitch_0
        0x61 -> :sswitch_1
        0x6e -> :sswitch_2
        0x75 -> :sswitch_3
    .end sparse-switch
.end method

.method private jjMoveStringLiteralDfa2_0(JJ)I
    .locals 7
    .parameter "old0"
    .parameter "active0"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v1, 0x2

    const/4 v4, 0x1

    .line 258
    and-long/2addr p3, p1

    cmp-long v2, p3, v5

    if-nez v2, :cond_0

    .line 259
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, p2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    .line 280
    :goto_0
    return v1

    .line 260
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v2}, Lcom/htc/gson/SimpleCharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    iget-char v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    sparse-switch v2, :sswitch_data_0

    .line 280
    :cond_1
    invoke-direct {p0, v4, p3, p4}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0, v4, p3, p4}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    goto :goto_0

    .line 268
    .end local v0           #e:Ljava/io/IOException;
    :sswitch_0
    const-wide/16 v2, 0x100

    and-long/2addr v2, p3

    cmp-long v2, v2, v5

    if-eqz v2, :cond_1

    .line 269
    const/16 v2, 0x8

    const/16 v3, 0xa

    invoke-direct {p0, v1, v2, v3}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto :goto_0

    .line 272
    :sswitch_1
    const-wide/16 v1, 0x200

    invoke-direct {p0, p3, p4, v1, v2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa3_0(JJ)I

    move-result v1

    goto :goto_0

    .line 274
    :sswitch_2
    const-wide/16 v1, 0x80

    invoke-direct {p0, p3, p4, v1, v2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa3_0(JJ)I

    move-result v1

    goto :goto_0

    .line 276
    :sswitch_3
    const-wide/32 v1, 0x4000000

    invoke-direct {p0, p3, p4, v1, v2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa3_0(JJ)I

    move-result v1

    goto :goto_0

    .line 265
    :sswitch_data_0
    .sparse-switch
        0x4e -> :sswitch_0
        0x66 -> :sswitch_1
        0x6c -> :sswitch_2
        0x7d -> :sswitch_3
    .end sparse-switch
.end method

.method private jjMoveStringLiteralDfa3_0(JJ)I
    .locals 7
    .parameter "old0"
    .parameter "active0"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v1, 0x3

    const/4 v4, 0x2

    .line 284
    and-long/2addr p3, p1

    cmp-long v2, p3, v5

    if-nez v2, :cond_0

    .line 285
    const/4 v1, 0x1

    invoke-direct {p0, v1, p1, p2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    .line 304
    :goto_0
    return v1

    .line 286
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v2}, Lcom/htc/gson/SimpleCharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    iget-char v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    sparse-switch v2, :sswitch_data_0

    .line 304
    :cond_1
    invoke-direct {p0, v4, p3, p4}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    goto :goto_0

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0, v4, p3, p4}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    goto :goto_0

    .line 294
    .end local v0           #e:Ljava/io/IOException;
    :sswitch_0
    const-wide/32 v1, 0x4000000

    invoke-direct {p0, p3, p4, v1, v2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa4_0(JJ)I

    move-result v1

    goto :goto_0

    .line 296
    :sswitch_1
    const-wide/16 v1, 0x200

    invoke-direct {p0, p3, p4, v1, v2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa4_0(JJ)I

    move-result v1

    goto :goto_0

    .line 298
    :sswitch_2
    const-wide/16 v2, 0x80

    and-long/2addr v2, p3

    cmp-long v2, v2, v5

    if-eqz v2, :cond_1

    .line 299
    const/4 v2, 0x7

    const/16 v3, 0xa

    invoke-direct {p0, v1, v2, v3}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto :goto_0

    .line 291
    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_0
        0x69 -> :sswitch_1
        0x6c -> :sswitch_2
    .end sparse-switch
.end method

.method private jjMoveStringLiteralDfa4_0(JJ)I
    .locals 7
    .parameter "old0"
    .parameter "active0"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v1, 0x4

    const/4 v4, 0x3

    .line 308
    and-long/2addr p3, p1

    cmp-long v2, p3, v5

    if-nez v2, :cond_0

    .line 309
    const/4 v1, 0x2

    invoke-direct {p0, v1, p1, p2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    .line 326
    :goto_0
    return v1

    .line 310
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v2}, Lcom/htc/gson/SimpleCharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    iget-char v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    sparse-switch v2, :sswitch_data_0

    .line 326
    :cond_1
    invoke-direct {p0, v4, p3, p4}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    goto :goto_0

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0, v4, p3, p4}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    goto :goto_0

    .line 318
    .end local v0           #e:Ljava/io/IOException;
    :sswitch_0
    const-wide/32 v2, 0x4000000

    and-long/2addr v2, p3

    cmp-long v2, v2, v5

    if-eqz v2, :cond_1

    .line 319
    const/16 v2, 0x1a

    invoke-direct {p0, v1, v2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopAtPos(II)I

    move-result v1

    goto :goto_0

    .line 322
    :sswitch_1
    const-wide/16 v1, 0x200

    invoke-direct {p0, p3, p4, v1, v2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa5_0(JJ)I

    move-result v1

    goto :goto_0

    .line 315
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x6e -> :sswitch_1
    .end sparse-switch
.end method

.method private jjMoveStringLiteralDfa5_0(JJ)I
    .locals 4
    .parameter "old0"
    .parameter "active0"

    .prologue
    const/4 v3, 0x4

    .line 330
    and-long/2addr p3, p1

    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-nez v1, :cond_0

    .line 331
    const/4 v1, 0x3

    invoke-direct {p0, v1, p1, p2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    .line 344
    :goto_0
    return v1

    .line 332
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/gson/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    iget-char v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    packed-switch v1, :pswitch_data_0

    .line 344
    invoke-direct {p0, v3, p3, p4}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    goto :goto_0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0, v3, p3, p4}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    .line 335
    const/4 v1, 0x5

    goto :goto_0

    .line 340
    .end local v0           #e:Ljava/io/IOException;
    :pswitch_0
    const-wide/16 v1, 0x200

    invoke-direct {p0, p3, p4, v1, v2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa6_0(JJ)I

    move-result v1

    goto :goto_0

    .line 337
    nop

    :pswitch_data_0
    .packed-switch 0x69
        :pswitch_0
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa6_0(JJ)I
    .locals 4
    .parameter "old0"
    .parameter "active0"

    .prologue
    const/4 v3, 0x5

    .line 348
    and-long/2addr p3, p1

    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-nez v1, :cond_0

    .line 349
    const/4 v1, 0x4

    invoke-direct {p0, v1, p1, p2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    .line 362
    :goto_0
    return v1

    .line 350
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/gson/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    iget-char v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    packed-switch v1, :pswitch_data_0

    .line 362
    invoke-direct {p0, v3, p3, p4}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    goto :goto_0

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0, v3, p3, p4}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    .line 353
    const/4 v1, 0x6

    goto :goto_0

    .line 358
    .end local v0           #e:Ljava/io/IOException;
    :pswitch_0
    const-wide/16 v1, 0x200

    invoke-direct {p0, p3, p4, v1, v2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa7_0(JJ)I

    move-result v1

    goto :goto_0

    .line 355
    nop

    :pswitch_data_0
    .packed-switch 0x74
        :pswitch_0
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa7_0(JJ)I
    .locals 7
    .parameter "old0"
    .parameter "active0"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v1, 0x7

    const/4 v4, 0x6

    .line 366
    and-long/2addr p3, p1

    cmp-long v2, p3, v5

    if-nez v2, :cond_0

    .line 367
    const/4 v1, 0x5

    invoke-direct {p0, v1, p1, p2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    .line 382
    :goto_0
    return v1

    .line 368
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v2}, Lcom/htc/gson/SimpleCharStream;->readChar()C

    move-result v2

    iput-char v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    iget-char v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    packed-switch v2, :pswitch_data_0

    .line 382
    :cond_1
    invoke-direct {p0, v4, p3, p4}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStartNfa_0(IJ)I

    move-result v1

    goto :goto_0

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, e:Ljava/io/IOException;
    invoke-direct {p0, v4, p3, p4}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    goto :goto_0

    .line 376
    .end local v0           #e:Ljava/io/IOException;
    :pswitch_0
    const-wide/16 v2, 0x200

    and-long/2addr v2, p3

    cmp-long v2, v2, v5

    if-eqz v2, :cond_1

    .line 377
    const/16 v2, 0x9

    const/16 v3, 0xa

    invoke-direct {p0, v1, v2, v3}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v1

    goto :goto_0

    .line 373
    :pswitch_data_0
    .packed-switch 0x79
        :pswitch_0
    .end packed-switch
.end method

.method private jjStartNfaWithStates_0(III)I
    .locals 2
    .parameter "pos"
    .parameter "kind"
    .parameter "state"

    .prologue
    .line 386
    iput p2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    .line 387
    iput p1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    .line 388
    :try_start_0
    iget-object v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v1}, Lcom/htc/gson/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveNfa_0(II)I

    move-result v1

    :goto_0
    return v1

    .line 389
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    add-int/lit8 v1, p1, 0x1

    goto :goto_0
.end method

.method private final jjStartNfa_0(IJ)I
    .locals 2
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 192
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_1(IJ)I
    .locals 2
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 885
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_2(IJ)I
    .locals 2
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 794
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjStopStringLiteralDfa_2(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    return v0
.end method

.method private jjStopAtPos(II)I
    .locals 1
    .parameter "pos"
    .parameter "kind"

    .prologue
    .line 196
    iput p2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    .line 197
    iput p1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    .line 198
    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_0(IJ)I
    .locals 9
    .parameter "pos"
    .parameter "active0"

    .prologue
    const-wide/16 v7, 0x200

    const/16 v6, 0xb

    const/4 v1, -0x1

    const/16 v0, 0xa

    const-wide/16 v4, 0x0

    .line 123
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 187
    :cond_0
    :goto_0
    return v0

    .line 126
    :pswitch_0
    const-wide/16 v2, 0x380

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 128
    iput v6, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    goto :goto_0

    .line 131
    :cond_1
    const-wide/32 v2, 0x40000

    and-long/2addr v2, p2

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    .line 132
    const/16 v0, 0x2b

    goto :goto_0

    :cond_2
    move v0, v1

    .line 133
    goto :goto_0

    .line 135
    :pswitch_1
    const-wide/16 v2, 0x380

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 137
    iput v6, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    .line 138
    const/4 v1, 0x1

    iput v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    goto :goto_0

    :cond_3
    move v0, v1

    .line 141
    goto :goto_0

    .line 143
    :pswitch_2
    const-wide/16 v2, 0x100

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 145
    const-wide/16 v2, 0x280

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    .line 147
    iput v6, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    .line 148
    const/4 v1, 0x2

    iput v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    goto :goto_0

    :cond_4
    move v0, v1

    .line 151
    goto :goto_0

    .line 153
    :pswitch_3
    const-wide/16 v2, 0x80

    and-long/2addr v2, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 155
    and-long v2, p2, v7

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    .line 157
    iput v6, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    .line 158
    const/4 v1, 0x3

    iput v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    goto :goto_0

    :cond_5
    move v0, v1

    .line 161
    goto :goto_0

    .line 163
    :pswitch_4
    and-long v2, p2, v7

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    .line 165
    iput v6, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    .line 166
    const/4 v1, 0x4

    iput v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    goto :goto_0

    :cond_6
    move v0, v1

    .line 169
    goto :goto_0

    .line 171
    :pswitch_5
    and-long v2, p2, v7

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    .line 173
    iput v6, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    .line 174
    const/4 v1, 0x5

    iput v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    goto :goto_0

    :cond_7
    move v0, v1

    .line 177
    goto :goto_0

    .line 179
    :pswitch_6
    and-long v2, p2, v7

    cmp-long v2, v2, v4

    if-eqz v2, :cond_8

    .line 181
    iput v6, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    .line 182
    const/4 v1, 0x6

    iput v1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    goto :goto_0

    :cond_8
    move v0, v1

    .line 185
    goto :goto_0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private final jjStopStringLiteralDfa_1(IJ)I
    .locals 1
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 877
    .line 880
    const/4 v0, -0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_2(IJ)I
    .locals 1
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 786
    .line 789
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public ReInit(Lcom/htc/gson/SimpleCharStream;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 1071
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewStateCnt:I

    iput v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    .line 1072
    iget v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->defaultLexState:I

    iput v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curLexState:I

    .line 1073
    iput-object p1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    .line 1074
    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->ReInitRounds()V

    .line 1075
    return-void
.end method

.method public ReInit(Lcom/htc/gson/SimpleCharStream;I)V
    .locals 0
    .parameter "stream"
    .parameter "lexState"

    .prologue
    .line 1091
    invoke-virtual {p0, p1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->ReInit(Lcom/htc/gson/SimpleCharStream;)V

    .line 1092
    invoke-virtual {p0, p2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->SwitchTo(I)V

    .line 1093
    return-void
.end method

.method public SwitchTo(I)V
    .locals 3
    .parameter "lexState"

    .prologue
    .line 1102
    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 1103
    :cond_0
    new-instance v0, Lcom/htc/gson/TokenMgrError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Ignoring invalid lexical state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". State unchanged."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/htc/gson/TokenMgrError;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1105
    :cond_1
    iput p1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curLexState:I

    .line 1106
    return-void
.end method

.method public getNextToken()Lcom/htc/gson/Token;
    .locals 15

    .prologue
    .line 1151
    const/4 v8, 0x0

    .line 1158
    .local v8, curPos:I
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v0}, Lcom/htc/gson/SimpleCharStream;->BeginToken()C

    move-result v0

    iput-char v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1169
    :goto_1
    iget v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curLexState:I

    packed-switch v0, :pswitch_data_0

    .line 1197
    :goto_2
    iget v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    const v2, 0x7fffffff

    if-eq v0, v2, :cond_7

    .line 1199
    iget v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    add-int/lit8 v0, v0, 0x1

    if-ge v0, v8, :cond_1

    .line 1200
    iget-object v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    iget v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    sub-int v2, v8, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lcom/htc/gson/SimpleCharStream;->backup(I)V

    .line 1201
    :cond_1
    sget-object v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjtoToken:[J

    iget v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    shr-int/lit8 v2, v2, 0x6

    aget-wide v6, v0, v2

    const-wide/16 v13, 0x1

    iget v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    and-int/lit8 v0, v0, 0x3f

    shl-long/2addr v13, v0

    and-long/2addr v6, v13

    const-wide/16 v13, 0x0

    cmp-long v0, v6, v13

    if-eqz v0, :cond_4

    .line 1203
    invoke-virtual {p0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjFillToken()Lcom/htc/gson/Token;

    move-result-object v11

    .line 1204
    .local v11, matchedToken:Lcom/htc/gson/Token;
    sget-object v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewLexState:[I

    iget v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    aget v0, v0, v2

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 1205
    sget-object v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewLexState:[I

    iget v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    aget v0, v0, v2

    iput v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curLexState:I

    :cond_2
    move-object v12, v11

    .line 1206
    .end local v11           #matchedToken:Lcom/htc/gson/Token;
    .local v12, matchedToken:Lcom/htc/gson/Token;
    :goto_3
    return-object v12

    .line 1160
    .end local v12           #matchedToken:Lcom/htc/gson/Token;
    :catch_0
    move-exception v9

    .line 1162
    .local v9, e:Ljava/io/IOException;
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    .line 1163
    invoke-virtual {p0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjFillToken()Lcom/htc/gson/Token;

    move-result-object v11

    .restart local v11       #matchedToken:Lcom/htc/gson/Token;
    move-object v12, v11

    .line 1164
    .end local v11           #matchedToken:Lcom/htc/gson/Token;
    .restart local v12       #matchedToken:Lcom/htc/gson/Token;
    goto :goto_3

    .line 1172
    .end local v9           #e:Ljava/io/IOException;
    .end local v12           #matchedToken:Lcom/htc/gson/Token;
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/gson/SimpleCharStream;->backup(I)V

    .line 1173
    :goto_4
    iget-char v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v2, 0x20

    if-gt v0, v2, :cond_3

    const-wide v6, 0x100002600L

    const-wide/16 v13, 0x1

    iget-char v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    shl-long/2addr v13, v0

    and-long/2addr v6, v13

    const-wide/16 v13, 0x0

    cmp-long v0, v6, v13

    if-eqz v0, :cond_3

    .line 1174
    iget-object v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v0}, Lcom/htc/gson/SimpleCharStream;->BeginToken()C

    move-result v0

    iput-char v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 1176
    :catch_1
    move-exception v10

    .local v10, e1:Ljava/io/IOException;
    goto/16 :goto_0

    .line 1177
    .end local v10           #e1:Ljava/io/IOException;
    :cond_3
    const v0, 0x7fffffff

    iput v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    .line 1178
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    .line 1179
    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa0_0()I

    move-result v8

    .line 1180
    goto/16 :goto_2

    .line 1182
    :pswitch_1
    const v0, 0x7fffffff

    iput v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    .line 1183
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    .line 1184
    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa0_1()I

    move-result v8

    .line 1185
    goto/16 :goto_2

    .line 1187
    :pswitch_2
    const v0, 0x7fffffff

    iput v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    .line 1188
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    .line 1189
    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa0_2()I

    move-result v8

    .line 1190
    goto/16 :goto_2

    .line 1192
    :pswitch_3
    const v0, 0x7fffffff

    iput v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    .line 1193
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedPos:I

    .line 1194
    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjMoveStringLiteralDfa0_3()I

    move-result v8

    goto/16 :goto_2

    .line 1208
    :cond_4
    sget-object v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjtoSkip:[J

    iget v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    shr-int/lit8 v2, v2, 0x6

    aget-wide v6, v0, v2

    const-wide/16 v13, 0x1

    iget v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    and-int/lit8 v0, v0, 0x3f

    shl-long/2addr v13, v0

    and-long/2addr v6, v13

    const-wide/16 v13, 0x0

    cmp-long v0, v6, v13

    if-eqz v0, :cond_5

    .line 1210
    sget-object v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewLexState:[I

    iget v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    aget v0, v0, v2

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 1211
    sget-object v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewLexState:[I

    iget v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    aget v0, v0, v2

    iput v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curLexState:I

    goto/16 :goto_0

    .line 1214
    :cond_5
    sget-object v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewLexState:[I

    iget v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    aget v0, v0, v2

    const/4 v2, -0x1

    if-eq v0, v2, :cond_6

    .line 1215
    sget-object v0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjnewLexState:[I

    iget v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    aget v0, v0, v2

    iput v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curLexState:I

    .line 1216
    :cond_6
    const/4 v8, 0x0

    .line 1217
    const v0, 0x7fffffff

    iput v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    .line 1219
    :try_start_2
    iget-object v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v0}, Lcom/htc/gson/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 1222
    :catch_2
    move-exception v0

    .line 1224
    :cond_7
    iget-object v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v0}, Lcom/htc/gson/SimpleCharStream;->getEndLine()I

    move-result v3

    .line 1225
    .local v3, error_line:I
    iget-object v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v0}, Lcom/htc/gson/SimpleCharStream;->getEndColumn()I

    move-result v4

    .line 1226
    .local v4, error_column:I
    const/4 v5, 0x0

    .line 1227
    .local v5, error_after:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1228
    .local v1, EOFSeen:Z
    :try_start_3
    iget-object v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v0}, Lcom/htc/gson/SimpleCharStream;->readChar()C

    iget-object v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/gson/SimpleCharStream;->backup(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1239
    :goto_5
    if-nez v1, :cond_8

    .line 1240
    iget-object v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/gson/SimpleCharStream;->backup(I)V

    .line 1241
    const/4 v0, 0x1

    if-gt v8, v0, :cond_c

    const-string v5, ""

    .line 1243
    :cond_8
    :goto_6
    new-instance v0, Lcom/htc/gson/TokenMgrError;

    iget v2, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curLexState:I

    iget-char v6, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/htc/gson/TokenMgrError;-><init>(ZIIILjava/lang/String;CI)V

    throw v0

    .line 1229
    :catch_3
    move-exception v10

    .line 1230
    .restart local v10       #e1:Ljava/io/IOException;
    const/4 v1, 0x1

    .line 1231
    const/4 v0, 0x1

    if-gt v8, v0, :cond_a

    const-string v5, ""

    .line 1232
    :goto_7
    iget-char v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v2, 0xa

    if-eq v0, v2, :cond_9

    iget-char v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->curChar:C

    const/16 v2, 0xd

    if-ne v0, v2, :cond_b

    .line 1233
    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 1234
    const/4 v4, 0x0

    goto :goto_5

    .line 1231
    :cond_a
    iget-object v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v0}, Lcom/htc/gson/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    .line 1237
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1241
    .end local v10           #e1:Ljava/io/IOException;
    :cond_c
    iget-object v0, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v0}, Lcom/htc/gson/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    .line 1169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected jjFillToken()Lcom/htc/gson/Token;
    .locals 9

    .prologue
    .line 1120
    sget-object v7, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    iget v8, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    aget-object v5, v7, v8

    .line 1121
    .local v5, im:Ljava/lang/String;
    if-nez v5, :cond_0

    iget-object v7, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v7}, Lcom/htc/gson/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v2

    .line 1122
    .local v2, curTokenImage:Ljava/lang/String;
    :goto_0
    iget-object v7, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v7}, Lcom/htc/gson/SimpleCharStream;->getBeginLine()I

    move-result v1

    .line 1123
    .local v1, beginLine:I
    iget-object v7, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v7}, Lcom/htc/gson/SimpleCharStream;->getBeginColumn()I

    move-result v0

    .line 1124
    .local v0, beginColumn:I
    iget-object v7, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v7}, Lcom/htc/gson/SimpleCharStream;->getEndLine()I

    move-result v4

    .line 1125
    .local v4, endLine:I
    iget-object v7, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v7}, Lcom/htc/gson/SimpleCharStream;->getEndColumn()I

    move-result v3

    .line 1126
    .local v3, endColumn:I
    iget v7, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->jjmatchedKind:I

    invoke-static {v7, v2}, Lcom/htc/gson/Token;->newToken(ILjava/lang/String;)Lcom/htc/gson/Token;

    move-result-object v6

    .line 1128
    .local v6, t:Lcom/htc/gson/Token;
    iput v1, v6, Lcom/htc/gson/Token;->beginLine:I

    .line 1129
    iput v4, v6, Lcom/htc/gson/Token;->endLine:I

    .line 1130
    iput v0, v6, Lcom/htc/gson/Token;->beginColumn:I

    .line 1131
    iput v3, v6, Lcom/htc/gson/Token;->endColumn:I

    .line 1133
    return-object v6

    .end local v0           #beginColumn:I
    .end local v1           #beginLine:I
    .end local v2           #curTokenImage:Ljava/lang/String;
    .end local v3           #endColumn:I
    .end local v4           #endLine:I
    .end local v6           #t:Lcom/htc/gson/Token;
    :cond_0
    move-object v2, v5

    .line 1121
    goto :goto_0
.end method

.method public setDebugStream(Ljava/io/PrintStream;)V
    .locals 0
    .parameter "ds"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/htc/gson/JsonParserJavaccTokenManager;->debugStream:Ljava/io/PrintStream;

    return-void
.end method
