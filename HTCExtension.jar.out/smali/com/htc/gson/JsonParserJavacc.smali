.class final Lcom/htc/gson/JsonParserJavacc;
.super Ljava/lang/Object;
.source "JsonParserJavacc.java"

# interfaces
.implements Lcom/htc/gson/JsonParserJavaccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/gson/JsonParserJavacc$1;,
        Lcom/htc/gson/JsonParserJavacc$JJCalls;,
        Lcom/htc/gson/JsonParserJavacc$LookaheadSuccess;
    }
.end annotation


# static fields
.field private static jj_la1_0:[I

.field private static jj_la1_1:[I


# instance fields
.field private final jj_2_rtns:[Lcom/htc/gson/JsonParserJavacc$JJCalls;

.field private jj_endpos:I

.field private jj_expentries:Ljava/util/List;

.field private jj_expentry:[I

.field private jj_gc:I

.field private jj_gen:I

.field jj_input_stream:Lcom/htc/gson/SimpleCharStream;

.field private jj_kind:I

.field private jj_la:I

.field private final jj_la1:[I

.field private jj_lastpos:Lcom/htc/gson/Token;

.field private jj_lasttokens:[I

.field private final jj_ls:Lcom/htc/gson/JsonParserJavacc$LookaheadSuccess;

.field public jj_nt:Lcom/htc/gson/Token;

.field private jj_ntk:I

.field private jj_rescan:Z

.field private jj_scanpos:Lcom/htc/gson/Token;

.field public token:Lcom/htc/gson/Token;

.field public token_source:Lcom/htc/gson/JsonParserJavaccTokenManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 499
    invoke-static {}, Lcom/htc/gson/JsonParserJavacc;->jj_la1_init_0()V

    .line 500
    invoke-static {}, Lcom/htc/gson/JsonParserJavacc;->jj_la1_init_1()V

    .line 501
    return-void
.end method

.method public constructor <init>(Lcom/htc/gson/JsonParserJavaccTokenManager;)V
    .locals 6
    .parameter "tm"

    .prologue
    const/16 v5, 0x12

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 573
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 495
    new-array v1, v5, [I

    iput-object v1, p0, Lcom/htc/gson/JsonParserJavacc;->jj_la1:[I

    .line 508
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/htc/gson/JsonParserJavacc$JJCalls;

    iput-object v1, p0, Lcom/htc/gson/JsonParserJavacc;->jj_2_rtns:[Lcom/htc/gson/JsonParserJavacc$JJCalls;

    .line 509
    iput-boolean v4, p0, Lcom/htc/gson/JsonParserJavacc;->jj_rescan:Z

    .line 510
    iput v4, p0, Lcom/htc/gson/JsonParserJavacc;->jj_gc:I

    .line 621
    new-instance v1, Lcom/htc/gson/JsonParserJavacc$LookaheadSuccess;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/gson/JsonParserJavacc$LookaheadSuccess;-><init>(Lcom/htc/gson/JsonParserJavacc$1;)V

    iput-object v1, p0, Lcom/htc/gson/JsonParserJavacc;->jj_ls:Lcom/htc/gson/JsonParserJavacc$LookaheadSuccess;

    .line 678
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/gson/JsonParserJavacc;->jj_expentries:Ljava/util/List;

    .line 680
    iput v3, p0, Lcom/htc/gson/JsonParserJavacc;->jj_kind:I

    .line 681
    const/16 v1, 0x64

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/htc/gson/JsonParserJavacc;->jj_lasttokens:[I

    .line 574
    iput-object p1, p0, Lcom/htc/gson/JsonParserJavacc;->token_source:Lcom/htc/gson/JsonParserJavaccTokenManager;

    .line 575
    new-instance v1, Lcom/htc/gson/Token;

    invoke-direct {v1}, Lcom/htc/gson/Token;-><init>()V

    iput-object v1, p0, Lcom/htc/gson/JsonParserJavacc;->token:Lcom/htc/gson/Token;

    .line 576
    iput v3, p0, Lcom/htc/gson/JsonParserJavacc;->jj_ntk:I

    .line 577
    iput v4, p0, Lcom/htc/gson/JsonParserJavacc;->jj_gen:I

    .line 578
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_0

    iget-object v1, p0, Lcom/htc/gson/JsonParserJavacc;->jj_la1:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 579
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/htc/gson/JsonParserJavacc;->jj_2_rtns:[Lcom/htc/gson/JsonParserJavacc$JJCalls;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/htc/gson/JsonParserJavacc;->jj_2_rtns:[Lcom/htc/gson/JsonParserJavacc$JJCalls;

    new-instance v2, Lcom/htc/gson/JsonParserJavacc$JJCalls;

    invoke-direct {v2}, Lcom/htc/gson/JsonParserJavacc$JJCalls;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 580
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 514
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/gson/JsonParserJavacc;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 515
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 8
    .parameter "stream"
    .parameter "encoding"

    .prologue
    const/16 v7, 0x12

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 517
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 495
    new-array v2, v7, [I

    iput-object v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_la1:[I

    .line 508
    new-array v2, v3, [Lcom/htc/gson/JsonParserJavacc$JJCalls;

    iput-object v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_2_rtns:[Lcom/htc/gson/JsonParserJavacc$JJCalls;

    .line 509
    iput-boolean v6, p0, Lcom/htc/gson/JsonParserJavacc;->jj_rescan:Z

    .line 510
    iput v6, p0, Lcom/htc/gson/JsonParserJavacc;->jj_gc:I

    .line 621
    new-instance v2, Lcom/htc/gson/JsonParserJavacc$LookaheadSuccess;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/htc/gson/JsonParserJavacc$LookaheadSuccess;-><init>(Lcom/htc/gson/JsonParserJavacc$1;)V

    iput-object v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_ls:Lcom/htc/gson/JsonParserJavacc$LookaheadSuccess;

    .line 678
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_expentries:Ljava/util/List;

    .line 680
    iput v5, p0, Lcom/htc/gson/JsonParserJavacc;->jj_kind:I

    .line 681
    const/16 v2, 0x64

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_lasttokens:[I

    .line 518
    :try_start_0
    new-instance v2, Lcom/htc/gson/SimpleCharStream;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct {v2, p1, p2, v3, v4}, Lcom/htc/gson/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;II)V

    iput-object v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_input_stream:Lcom/htc/gson/SimpleCharStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    new-instance v2, Lcom/htc/gson/JsonParserJavaccTokenManager;

    iget-object v3, p0, Lcom/htc/gson/JsonParserJavacc;->jj_input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-direct {v2, v3}, Lcom/htc/gson/JsonParserJavaccTokenManager;-><init>(Lcom/htc/gson/SimpleCharStream;)V

    iput-object v2, p0, Lcom/htc/gson/JsonParserJavacc;->token_source:Lcom/htc/gson/JsonParserJavaccTokenManager;

    .line 520
    new-instance v2, Lcom/htc/gson/Token;

    invoke-direct {v2}, Lcom/htc/gson/Token;-><init>()V

    iput-object v2, p0, Lcom/htc/gson/JsonParserJavacc;->token:Lcom/htc/gson/Token;

    .line 521
    iput v5, p0, Lcom/htc/gson/JsonParserJavacc;->jj_ntk:I

    .line 522
    iput v6, p0, Lcom/htc/gson/JsonParserJavacc;->jj_gen:I

    .line 523
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v7, :cond_0

    iget-object v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_la1:[I

    aput v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 518
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 524
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #i:I
    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_2_rtns:[Lcom/htc/gson/JsonParserJavacc$JJCalls;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_2_rtns:[Lcom/htc/gson/JsonParserJavacc$JJCalls;

    new-instance v3, Lcom/htc/gson/JsonParserJavacc$JJCalls;

    invoke-direct {v3}, Lcom/htc/gson/JsonParserJavacc$JJCalls;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 525
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 7
    .parameter "stream"

    .prologue
    const/16 v6, 0x12

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 551
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 495
    new-array v1, v6, [I

    iput-object v1, p0, Lcom/htc/gson/JsonParserJavacc;->jj_la1:[I

    .line 508
    new-array v1, v5, [Lcom/htc/gson/JsonParserJavacc$JJCalls;

    iput-object v1, p0, Lcom/htc/gson/JsonParserJavacc;->jj_2_rtns:[Lcom/htc/gson/JsonParserJavacc$JJCalls;

    .line 509
    iput-boolean v4, p0, Lcom/htc/gson/JsonParserJavacc;->jj_rescan:Z

    .line 510
    iput v4, p0, Lcom/htc/gson/JsonParserJavacc;->jj_gc:I

    .line 621
    new-instance v1, Lcom/htc/gson/JsonParserJavacc$LookaheadSuccess;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/gson/JsonParserJavacc$LookaheadSuccess;-><init>(Lcom/htc/gson/JsonParserJavacc$1;)V

    iput-object v1, p0, Lcom/htc/gson/JsonParserJavacc;->jj_ls:Lcom/htc/gson/JsonParserJavacc$LookaheadSuccess;

    .line 678
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/gson/JsonParserJavacc;->jj_expentries:Ljava/util/List;

    .line 680
    iput v3, p0, Lcom/htc/gson/JsonParserJavacc;->jj_kind:I

    .line 681
    const/16 v1, 0x64

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/htc/gson/JsonParserJavacc;->jj_lasttokens:[I

    .line 552
    new-instance v1, Lcom/htc/gson/SimpleCharStream;

    invoke-direct {v1, p1, v5, v5}, Lcom/htc/gson/SimpleCharStream;-><init>(Ljava/io/Reader;II)V

    iput-object v1, p0, Lcom/htc/gson/JsonParserJavacc;->jj_input_stream:Lcom/htc/gson/SimpleCharStream;

    .line 553
    new-instance v1, Lcom/htc/gson/JsonParserJavaccTokenManager;

    iget-object v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-direct {v1, v2}, Lcom/htc/gson/JsonParserJavaccTokenManager;-><init>(Lcom/htc/gson/SimpleCharStream;)V

    iput-object v1, p0, Lcom/htc/gson/JsonParserJavacc;->token_source:Lcom/htc/gson/JsonParserJavaccTokenManager;

    .line 554
    new-instance v1, Lcom/htc/gson/Token;

    invoke-direct {v1}, Lcom/htc/gson/Token;-><init>()V

    iput-object v1, p0, Lcom/htc/gson/JsonParserJavacc;->token:Lcom/htc/gson/Token;

    .line 555
    iput v3, p0, Lcom/htc/gson/JsonParserJavacc;->jj_ntk:I

    .line 556
    iput v4, p0, Lcom/htc/gson/JsonParserJavacc;->jj_gen:I

    .line 557
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v6, :cond_0

    iget-object v1, p0, Lcom/htc/gson/JsonParserJavacc;->jj_la1:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 558
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/htc/gson/JsonParserJavacc;->jj_2_rtns:[Lcom/htc/gson/JsonParserJavacc$JJCalls;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/htc/gson/JsonParserJavacc;->jj_2_rtns:[Lcom/htc/gson/JsonParserJavacc$JJCalls;

    new-instance v2, Lcom/htc/gson/JsonParserJavacc$JJCalls;

    invoke-direct {v2}, Lcom/htc/gson/JsonParserJavacc$JJCalls;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 559
    :cond_1
    return-void
.end method

.method private final Digits()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/gson/ParseException;
        }
    .end annotation

    .prologue
    .line 408
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/htc/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/htc/gson/Token;

    move-result-object v0

    .line 409
    .local v0, t:Lcom/htc/gson/Token;
    iget-object v1, v0, Lcom/htc/gson/Token;->image:Ljava/lang/String;

    return-object v1
.end method

.method private final Identifier()Lcom/htc/gson/Token;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/gson/ParseException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 390
    iget v1, p0, Lcom/htc/gson/JsonParserJavacc;->jj_ntk:I

    if-ne v1, v4, :cond_0

    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavacc;->jj_ntk()I

    move-result v1

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 398
    iget-object v1, p0, Lcom/htc/gson/JsonParserJavacc;->jj_la1:[I

    const/16 v2, 0x10

    iget v3, p0, Lcom/htc/gson/JsonParserJavacc;->jj_gen:I

    aput v3, v1, v2

    .line 399
    invoke-direct {p0, v4}, Lcom/htc/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/htc/gson/Token;

    .line 400
    new-instance v1, Lcom/htc/gson/ParseException;

    invoke-direct {v1}, Lcom/htc/gson/ParseException;-><init>()V

    throw v1

    .line 390
    :cond_0
    iget v1, p0, Lcom/htc/gson/JsonParserJavacc;->jj_ntk:I

    goto :goto_0

    .line 392
    :pswitch_0
    const/16 v1, 0xc

    invoke-direct {p0, v1}, Lcom/htc/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/htc/gson/Token;

    move-result-object v0

    .line 402
    .local v0, t:Lcom/htc/gson/Token;
    :goto_1
    return-object v0

    .line 395
    .end local v0           #t:Lcom/htc/gson/Token;
    :pswitch_1
    const/16 v1, 0xb

    invoke-direct {p0, v1}, Lcom/htc/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/htc/gson/Token;

    move-result-object v0

    .line 396
    .restart local v0       #t:Lcom/htc/gson/Token;
    goto :goto_1

    .line 390
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final JsonArray()Lcom/htc/gson/JsonArray;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/gson/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 144
    new-instance v0, Lcom/htc/gson/JsonArray;

    invoke-direct {v0}, Lcom/htc/gson/JsonArray;-><init>()V

    .line 145
    .local v0, array:Lcom/htc/gson/JsonArray;
    const/16 v2, 0x1f

    invoke-direct {p0, v2}, Lcom/htc/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/htc/gson/Token;

    .line 146
    iget v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_ntk:I

    if-ne v2, v5, :cond_0

    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavacc;->jj_ntk()I

    move-result v2

    :goto_0
    sparse-switch v2, :sswitch_data_0

    .line 178
    iget-object v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_la1:[I

    const/4 v3, 0x7

    iget v4, p0, Lcom/htc/gson/JsonParserJavacc;->jj_gen:I

    aput v4, v2, v3

    .line 179
    invoke-direct {p0, v5}, Lcom/htc/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/htc/gson/Token;

    .line 180
    new-instance v2, Lcom/htc/gson/ParseException;

    invoke-direct {v2}, Lcom/htc/gson/ParseException;-><init>()V

    throw v2

    .line 146
    :cond_0
    iget v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_ntk:I

    goto :goto_0

    .line 148
    :sswitch_0
    invoke-direct {p0, v0}, Lcom/htc/gson/JsonParserJavacc;->JsonArrayEmpty(Lcom/htc/gson/JsonArray;)Lcom/htc/gson/JsonArray;

    move-result-object v0

    move-object v1, v0

    .line 175
    .end local v0           #array:Lcom/htc/gson/JsonArray;
    .local v1, array:Ljava/lang/Object;
    :goto_1
    return-object v1

    .line 161
    .end local v1           #array:Ljava/lang/Object;
    .restart local v0       #array:Lcom/htc/gson/JsonArray;
    :sswitch_1
    invoke-direct {p0, v0}, Lcom/htc/gson/JsonParserJavacc;->JsonArrayElement(Lcom/htc/gson/JsonArray;)Lcom/htc/gson/JsonArray;

    .line 164
    :goto_2
    iget v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_ntk:I

    if-ne v2, v5, :cond_1

    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavacc;->jj_ntk()I

    move-result v2

    :goto_3
    packed-switch v2, :pswitch_data_0

    .line 169
    iget-object v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_la1:[I

    const/4 v3, 0x6

    iget v4, p0, Lcom/htc/gson/JsonParserJavacc;->jj_gen:I

    aput v4, v2, v3

    .line 174
    const/16 v2, 0x20

    invoke-direct {p0, v2}, Lcom/htc/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/htc/gson/Token;

    move-object v1, v0

    .line 175
    .restart local v1       #array:Ljava/lang/Object;
    goto :goto_1

    .line 164
    .end local v1           #array:Ljava/lang/Object;
    :cond_1
    iget v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_ntk:I

    goto :goto_3

    .line 172
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/htc/gson/JsonParserJavacc;->JsonArrayNextElement(Lcom/htc/gson/JsonArray;)Lcom/htc/gson/JsonArray;

    goto :goto_2

    .line 146
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_1
        0x7 -> :sswitch_1
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0x10 -> :sswitch_1
        0x11 -> :sswitch_1
        0x1b -> :sswitch_1
        0x1f -> :sswitch_1
        0x20 -> :sswitch_0
        0x21 -> :sswitch_1
    .end sparse-switch

    .line 164
    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_0
    .end packed-switch
.end method

.method private final JsonArrayElement(Lcom/htc/gson/JsonArray;)Lcom/htc/gson/JsonArray;
    .locals 1
    .parameter "array"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/gson/ParseException;
        }
    .end annotation

    .prologue
    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, element:Lcom/htc/gson/JsonElement;
    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavacc;->JsonValue()Lcom/htc/gson/JsonElement;

    move-result-object v0

    .line 194
    invoke-virtual {p1, v0}, Lcom/htc/gson/JsonArray;->add(Lcom/htc/gson/JsonElement;)V

    .line 195
    return-object p1
.end method

.method private final JsonArrayEmpty(Lcom/htc/gson/JsonArray;)Lcom/htc/gson/JsonArray;
    .locals 1
    .parameter "array"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/gson/ParseException;
        }
    .end annotation

    .prologue
    .line 186
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/htc/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/htc/gson/Token;

    .line 187
    return-object p1
.end method

.method private final JsonArrayNextElement(Lcom/htc/gson/JsonArray;)Lcom/htc/gson/JsonArray;
    .locals 2
    .parameter "array"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/gson/ParseException;
        }
    .end annotation

    .prologue
    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, element:Lcom/htc/gson/JsonElement;
    const/16 v1, 0x1d

    invoke-direct {p0, v1}, Lcom/htc/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/htc/gson/Token;

    .line 202
    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavacc;->JsonValue()Lcom/htc/gson/JsonElement;

    move-result-object v0

    .line 203
    invoke-virtual {p1, v0}, Lcom/htc/gson/JsonArray;->add(Lcom/htc/gson/JsonElement;)V

    .line 204
    return-object p1
.end method

.method private final JsonBoolean()Lcom/htc/gson/JsonPrimitive;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/gson/ParseException;
        }
    .end annotation

    .prologue
    .line 244
    const/16 v2, 0xa

    invoke-direct {p0, v2}, Lcom/htc/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/htc/gson/Token;

    move-result-object v0

    .line 245
    .local v0, t:Lcom/htc/gson/Token;
    iget-object v2, v0, Lcom/htc/gson/Token;->image:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 246
    .local v1, value:Z
    new-instance v2, Lcom/htc/gson/JsonPrimitive;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/gson/JsonPrimitive;-><init>(Ljava/lang/Boolean;)V

    return-object v2
.end method

.method private final JsonExp()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/gson/ParseException;
        }
    .end annotation

    .prologue
    .line 383
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/htc/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/htc/gson/Token;

    move-result-object v0

    .line 384
    .local v0, t:Lcom/htc/gson/Token;
    iget-object v1, v0, Lcom/htc/gson/Token;->image:Ljava/lang/String;

    return-object v1
.end method

.method private final JsonFrac()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/gson/ParseException;
        }
    .end annotation

    .prologue
    .line 375
    const/16 v1, 0x22

    invoke-direct {p0, v1}, Lcom/htc/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/htc/gson/Token;

    .line 376
    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavacc;->Digits()Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, digits:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private final JsonInt()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/gson/ParseException;
        }
    .end annotation

    .prologue
    .line 356
    const/4 v1, 0x0

    .line 357
    .local v1, negative:Z
    iget v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_ntk:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavacc;->jj_ntk()I

    move-result v2

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 363
    iget-object v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_la1:[I

    const/16 v3, 0xf

    iget v4, p0, Lcom/htc/gson/JsonParserJavacc;->jj_gen:I

    aput v4, v2, v3

    .line 366
    :goto_1
    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavacc;->Digits()Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, digits:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 368
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 369
    .end local v0           #digits:Ljava/lang/String;
    :cond_0
    return-object v0

    .line 357
    :cond_1
    iget v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_ntk:I

    goto :goto_0

    .line 359
    :pswitch_0
    const/16 v2, 0x21

    invoke-direct {p0, v2}, Lcom/htc/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/htc/gson/Token;

    .line 360
    const/4 v1, 0x1

    .line 361
    goto :goto_1

    .line 357
    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
    .end packed-switch
.end method

.method private final JsonMemberName()Lcom/htc/gson/JsonPrimitive;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/gson/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 124
    iget v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_ntk:I

    if-ne v2, v5, :cond_0

    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavacc;->jj_ntk()I

    move-result v2

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 136
    :pswitch_0
    iget-object v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_la1:[I

    const/4 v3, 0x5

    iget v4, p0, Lcom/htc/gson/JsonParserJavacc;->jj_gen:I

    aput v4, v2, v3

    .line 137
    invoke-direct {p0, v5}, Lcom/htc/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/htc/gson/Token;

    .line 138
    new-instance v2, Lcom/htc/gson/ParseException;

    invoke-direct {v2}, Lcom/htc/gson/ParseException;-><init>()V

    throw v2

    .line 124
    :cond_0
    iget v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_ntk:I

    goto :goto_0

    .line 127
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavacc;->Identifier()Lcom/htc/gson/Token;

    move-result-object v0

    .line 128
    .local v0, t:Lcom/htc/gson/Token;
    new-instance v1, Lcom/htc/gson/JsonPrimitive;

    iget-object v2, v0, Lcom/htc/gson/Token;->image:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/htc/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    .line 133
    .end local v0           #t:Lcom/htc/gson/Token;
    :goto_1
    return-object v1

    .line 132
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavacc;->JsonString()Lcom/htc/gson/JsonPrimitive;

    move-result-object v1

    .line 133
    .local v1, value:Lcom/htc/gson/JsonPrimitive;
    goto :goto_1

    .line 124
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private final JsonNull()Lcom/htc/gson/JsonNull;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/gson/ParseException;
        }
    .end annotation

    .prologue
    .line 95
    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lcom/htc/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/htc/gson/Token;

    move-result-object v0

    .line 96
    .local v0, t:Lcom/htc/gson/Token;
    invoke-static {}, Lcom/htc/gson/JsonNull;->createJsonNull()Lcom/htc/gson/JsonNull;

    move-result-object v1

    return-object v1
.end method

.method private final JsonNumber()Lcom/htc/gson/JsonPrimitive;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/gson/ParseException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 278
    const/4 v2, 0x0

    .line 279
    .local v2, intpart:Ljava/lang/String;
    const/4 v1, 0x0

    .line 280
    .local v1, fracpart:Ljava/lang/String;
    const/4 v0, 0x0

    .line 282
    .local v0, exppart:Ljava/lang/String;
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/htc/gson/JsonParserJavacc;->jj_2_1(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 283
    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavacc;->JsonSpecialNumbers()Lcom/htc/gson/JsonPrimitive;

    move-result-object v4

    .line 314
    :goto_0
    return-object v4

    .line 286
    :cond_0
    iget v5, p0, Lcom/htc/gson/JsonParserJavacc;->jj_ntk:I

    if-ne v5, v8, :cond_1

    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavacc;->jj_ntk()I

    move-result v5

    :goto_1
    sparse-switch v5, :sswitch_data_0

    .line 317
    iget-object v5, p0, Lcom/htc/gson/JsonParserJavacc;->jj_la1:[I

    const/16 v6, 0xc

    iget v7, p0, Lcom/htc/gson/JsonParserJavacc;->jj_gen:I

    aput v7, v5, v6

    .line 318
    invoke-direct {p0, v8}, Lcom/htc/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/htc/gson/Token;

    .line 319
    new-instance v5, Lcom/htc/gson/ParseException;

    invoke-direct {v5}, Lcom/htc/gson/ParseException;-><init>()V

    throw v5

    .line 286
    :cond_1
    iget v5, p0, Lcom/htc/gson/JsonParserJavacc;->jj_ntk:I

    goto :goto_1

    .line 289
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavacc;->JsonInt()Ljava/lang/String;

    move-result-object v2

    .line 290
    iget v5, p0, Lcom/htc/gson/JsonParserJavacc;->jj_ntk:I

    if-ne v5, v8, :cond_5

    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavacc;->jj_ntk()I

    move-result v5

    :goto_2
    packed-switch v5, :pswitch_data_0

    .line 295
    iget-object v5, p0, Lcom/htc/gson/JsonParserJavacc;->jj_la1:[I

    const/16 v6, 0xa

    iget v7, p0, Lcom/htc/gson/JsonParserJavacc;->jj_gen:I

    aput v7, v5, v6

    .line 298
    :goto_3
    iget v5, p0, Lcom/htc/gson/JsonParserJavacc;->jj_ntk:I

    if-ne v5, v8, :cond_6

    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavacc;->jj_ntk()I

    move-result v5

    :goto_4
    packed-switch v5, :pswitch_data_1

    .line 303
    iget-object v5, p0, Lcom/htc/gson/JsonParserJavacc;->jj_la1:[I

    const/16 v6, 0xb

    iget v7, p0, Lcom/htc/gson/JsonParserJavacc;->jj_gen:I

    aput v7, v5, v6

    .line 307
    :goto_5
    if-nez v0, :cond_2

    if-eqz v1, :cond_7

    .line 308
    :cond_2
    if-nez v1, :cond_3

    const-string v1, ""

    .line 309
    :cond_3
    if-nez v0, :cond_4

    const-string v0, ""

    .line 310
    :cond_4
    new-instance v3, Ljava/math/BigDecimal;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 314
    .local v3, n:Ljava/lang/Number;
    :goto_6
    new-instance v4, Lcom/htc/gson/JsonPrimitive;

    invoke-direct {v4, v3}, Lcom/htc/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    goto :goto_0

    .line 290
    .end local v3           #n:Ljava/lang/Number;
    :cond_5
    iget v5, p0, Lcom/htc/gson/JsonParserJavacc;->jj_ntk:I

    goto :goto_2

    .line 292
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavacc;->JsonFrac()Ljava/lang/String;

    move-result-object v1

    .line 293
    goto :goto_3

    .line 298
    :cond_6
    iget v5, p0, Lcom/htc/gson/JsonParserJavacc;->jj_ntk:I

    goto :goto_4

    .line 300
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavacc;->JsonExp()Ljava/lang/String;

    move-result-object v0

    .line 301
    goto :goto_5

    .line 312
    :cond_7
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .restart local v3       #n:Ljava/lang/Number;
    goto :goto_6

    .line 286
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x21 -> :sswitch_0
    .end sparse-switch

    .line 290
    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_0
    .end packed-switch

    .line 298
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_1
    .end packed-switch
.end method

.method private final JsonObject()Lcom/htc/gson/JsonObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/gson/ParseException;
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Lcom/htc/gson/JsonObject;

    invoke-direct {v0}, Lcom/htc/gson/JsonObject;-><init>()V

    .line 76
    .local v0, o:Lcom/htc/gson/JsonObject;
    const/16 v1, 0x1b

    invoke-direct {p0, v1}, Lcom/htc/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/htc/gson/Token;

    .line 77
    iget v1, p0, Lcom/htc/gson/JsonParserJavacc;->jj_ntk:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavacc;->jj_ntk()I

    move-result v1

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 85
    :pswitch_0
    iget-object v1, p0, Lcom/htc/gson/JsonParserJavacc;->jj_la1:[I

    const/4 v2, 0x3

    iget v3, p0, Lcom/htc/gson/JsonParserJavacc;->jj_gen:I

    aput v3, v1, v2

    .line 88
    :goto_1
    const/16 v1, 0x1c

    invoke-direct {p0, v1}, Lcom/htc/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/htc/gson/Token;

    .line 89
    return-object v0

    .line 77
    :cond_0
    iget v1, p0, Lcom/htc/gson/JsonParserJavacc;->jj_ntk:I

    goto :goto_0

    .line 82
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/htc/gson/JsonParserJavacc;->Members(Lcom/htc/gson/JsonObject;)V

    goto :goto_1

    .line 77
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private final JsonPrimitive()Lcom/htc/gson/JsonPrimitive;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/gson/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 252
    iget v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_ntk:I

    if-ne v2, v5, :cond_0

    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavacc;->jj_ntk()I

    move-result v2

    :goto_0
    sparse-switch v2, :sswitch_data_0

    .line 270
    iget-object v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_la1:[I

    const/16 v3, 0x9

    iget v4, p0, Lcom/htc/gson/JsonParserJavacc;->jj_gen:I

    aput v4, v2, v3

    .line 271
    invoke-direct {p0, v5}, Lcom/htc/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/htc/gson/Token;

    .line 272
    new-instance v2, Lcom/htc/gson/ParseException;

    invoke-direct {v2}, Lcom/htc/gson/ParseException;-><init>()V

    throw v2

    .line 252
    :cond_0
    iget v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_ntk:I

    goto :goto_0

    .line 255
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavacc;->JsonString()Lcom/htc/gson/JsonPrimitive;

    move-result-object v0

    .local v0, value:Lcom/htc/gson/JsonPrimitive;
    move-object v1, v0

    .line 267
    .end local v0           #value:Lcom/htc/gson/JsonPrimitive;
    .local v1, value:Lcom/htc/gson/JsonPrimitive;
    :goto_1
    return-object v1

    .line 262
    .end local v1           #value:Lcom/htc/gson/JsonPrimitive;
    :sswitch_1
    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavacc;->JsonNumber()Lcom/htc/gson/JsonPrimitive;

    move-result-object v0

    .restart local v0       #value:Lcom/htc/gson/JsonPrimitive;
    move-object v1, v0

    .line 263
    .end local v0           #value:Lcom/htc/gson/JsonPrimitive;
    .restart local v1       #value:Lcom/htc/gson/JsonPrimitive;
    goto :goto_1

    .line 266
    .end local v1           #value:Lcom/htc/gson/JsonPrimitive;
    :sswitch_2
    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavacc;->JsonBoolean()Lcom/htc/gson/JsonPrimitive;

    move-result-object v0

    .restart local v0       #value:Lcom/htc/gson/JsonPrimitive;
    move-object v1, v0

    .line 267
    .end local v0           #value:Lcom/htc/gson/JsonPrimitive;
    .restart local v1       #value:Lcom/htc/gson/JsonPrimitive;
    goto :goto_1

    .line 252
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_1
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
        0x21 -> :sswitch_1
    .end sparse-switch
.end method

.method private final JsonSpecialNumbers()Lcom/htc/gson/JsonPrimitive;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/gson/ParseException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 326
    const/4 v0, 0x0

    .line 327
    .local v0, negative:Z
    iget v1, p0, Lcom/htc/gson/JsonParserJavacc;->jj_ntk:I

    if-ne v1, v4, :cond_0

    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavacc;->jj_ntk()I

    move-result v1

    :goto_0
    sparse-switch v1, :sswitch_data_0

    .line 347
    iget-object v1, p0, Lcom/htc/gson/JsonParserJavacc;->jj_la1:[I

    const/16 v2, 0xe

    iget v3, p0, Lcom/htc/gson/JsonParserJavacc;->jj_gen:I

    aput v3, v1, v2

    .line 348
    invoke-direct {p0, v4}, Lcom/htc/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/htc/gson/Token;

    .line 349
    new-instance v1, Lcom/htc/gson/ParseException;

    invoke-direct {v1}, Lcom/htc/gson/ParseException;-><init>()V

    throw v1

    .line 327
    :cond_0
    iget v1, p0, Lcom/htc/gson/JsonParserJavacc;->jj_ntk:I

    goto :goto_0

    .line 329
    :sswitch_0
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/htc/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/htc/gson/Token;

    .line 330
    new-instance v1, Lcom/htc/gson/JsonPrimitive;

    const-wide/high16 v2, 0x7ff8

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    .line 344
    :goto_1
    return-object v1

    .line 334
    :sswitch_1
    iget v1, p0, Lcom/htc/gson/JsonParserJavacc;->jj_ntk:I

    if-ne v1, v4, :cond_1

    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavacc;->jj_ntk()I

    move-result v1

    :goto_2
    packed-switch v1, :pswitch_data_0

    .line 340
    iget-object v1, p0, Lcom/htc/gson/JsonParserJavacc;->jj_la1:[I

    const/16 v2, 0xd

    iget v3, p0, Lcom/htc/gson/JsonParserJavacc;->jj_gen:I

    aput v3, v1, v2

    .line 343
    :goto_3
    const/16 v1, 0x9

    invoke-direct {p0, v1}, Lcom/htc/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/htc/gson/Token;

    .line 344
    new-instance v3, Lcom/htc/gson/JsonPrimitive;

    if-eqz v0, :cond_2

    const-wide/high16 v1, -0x10

    :goto_4
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/htc/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    move-object v1, v3

    goto :goto_1

    .line 334
    :cond_1
    iget v1, p0, Lcom/htc/gson/JsonParserJavacc;->jj_ntk:I

    goto :goto_2

    .line 336
    :pswitch_0
    const/16 v1, 0x21

    invoke-direct {p0, v1}, Lcom/htc/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/htc/gson/Token;

    .line 337
    const/4 v0, 0x1

    .line 338
    goto :goto_3

    .line 344
    :cond_2
    const-wide/high16 v1, 0x7ff0

    goto :goto_4

    .line 327
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x9 -> :sswitch_1
        0x21 -> :sswitch_1
    .end sparse-switch

    .line 334
    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
    .end packed-switch
.end method

.method private final JsonString()Lcom/htc/gson/JsonPrimitive;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/gson/ParseException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x11

    const/4 v4, -0x1

    .line 415
    iget v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_ntk:I

    if-ne v2, v4, :cond_0

    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavacc;->jj_ntk()I

    move-result v2

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 423
    iget-object v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_la1:[I

    iget v3, p0, Lcom/htc/gson/JsonParserJavacc;->jj_gen:I

    aput v3, v2, v5

    .line 424
    invoke-direct {p0, v4}, Lcom/htc/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/htc/gson/Token;

    .line 425
    new-instance v2, Lcom/htc/gson/ParseException;

    invoke-direct {v2}, Lcom/htc/gson/ParseException;-><init>()V

    throw v2

    .line 415
    :cond_0
    iget v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_ntk:I

    goto :goto_0

    .line 417
    :pswitch_0
    const/16 v2, 0x10

    invoke-direct {p0, v2}, Lcom/htc/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/htc/gson/Token;

    move-result-object v0

    .line 427
    .local v0, t:Lcom/htc/gson/Token;
    :goto_1
    iget-object v2, v0, Lcom/htc/gson/Token;->image:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/gson/StringUnmarshaller;->unmarshall(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 428
    .local v1, value:Ljava/lang/String;
    new-instance v2, Lcom/htc/gson/JsonPrimitive;

    invoke-direct {v2, v1}, Lcom/htc/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 420
    .end local v0           #t:Lcom/htc/gson/Token;
    .end local v1           #value:Ljava/lang/String;
    :pswitch_1
    invoke-direct {p0, v5}, Lcom/htc/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/htc/gson/Token;

    move-result-object v0

    .line 421
    .restart local v0       #t:Lcom/htc/gson/Token;
    goto :goto_1

    .line 415
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final JsonValue()Lcom/htc/gson/JsonElement;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/gson/ParseException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, o:Lcom/htc/gson/JsonElement;
    iget v1, p0, Lcom/htc/gson/JsonParserJavacc;->jj_ntk:I

    if-ne v1, v4, :cond_0

    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavacc;->jj_ntk()I

    move-result v1

    :goto_0
    sparse-switch v1, :sswitch_data_0

    .line 234
    iget-object v1, p0, Lcom/htc/gson/JsonParserJavacc;->jj_la1:[I

    const/16 v2, 0x8

    iget v3, p0, Lcom/htc/gson/JsonParserJavacc;->jj_gen:I

    aput v3, v1, v2

    .line 235
    invoke-direct {p0, v4}, Lcom/htc/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/htc/gson/Token;

    .line 236
    new-instance v1, Lcom/htc/gson/ParseException;

    invoke-direct {v1}, Lcom/htc/gson/ParseException;-><init>()V

    throw v1

    .line 210
    :cond_0
    iget v1, p0, Lcom/htc/gson/JsonParserJavacc;->jj_ntk:I

    goto :goto_0

    .line 213
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavacc;->JsonString()Lcom/htc/gson/JsonPrimitive;

    move-result-object v0

    .line 238
    :goto_1
    return-object v0

    .line 219
    :sswitch_1
    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavacc;->JsonNumber()Lcom/htc/gson/JsonPrimitive;

    move-result-object v0

    .line 220
    goto :goto_1

    .line 222
    :sswitch_2
    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavacc;->JsonObject()Lcom/htc/gson/JsonObject;

    move-result-object v0

    .line 223
    goto :goto_1

    .line 225
    :sswitch_3
    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavacc;->JsonArray()Lcom/htc/gson/JsonArray;

    move-result-object v0

    .line 226
    goto :goto_1

    .line 228
    :sswitch_4
    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavacc;->JsonBoolean()Lcom/htc/gson/JsonPrimitive;

    move-result-object v0

    .line 229
    goto :goto_1

    .line 231
    :sswitch_5
    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavacc;->JsonNull()Lcom/htc/gson/JsonNull;

    move-result-object v0

    .line 232
    goto :goto_1

    .line 210
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_1
        0x7 -> :sswitch_5
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1
        0xa -> :sswitch_4
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
        0x1b -> :sswitch_2
        0x1f -> :sswitch_3
        0x21 -> :sswitch_1
    .end sparse-switch
.end method

.method private final Members(Lcom/htc/gson/JsonObject;)V
    .locals 3
    .parameter "o"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/gson/ParseException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/htc/gson/JsonParserJavacc;->Pair(Lcom/htc/gson/JsonObject;)V

    .line 102
    iget v0, p0, Lcom/htc/gson/JsonParserJavacc;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavacc;->jj_ntk()I

    move-result v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 108
    iget-object v0, p0, Lcom/htc/gson/JsonParserJavacc;->jj_la1:[I

    const/4 v1, 0x4

    iget v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_gen:I

    aput v2, v0, v1

    .line 111
    :goto_1
    return-void

    .line 102
    :cond_0
    iget v0, p0, Lcom/htc/gson/JsonParserJavacc;->jj_ntk:I

    goto :goto_0

    .line 104
    :pswitch_0
    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Lcom/htc/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/htc/gson/Token;

    .line 105
    invoke-direct {p0, p1}, Lcom/htc/gson/JsonParserJavacc;->Members(Lcom/htc/gson/JsonObject;)V

    goto :goto_1

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_0
    .end packed-switch
.end method

.method private final Pair(Lcom/htc/gson/JsonObject;)V
    .locals 3
    .parameter "o"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/gson/ParseException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavacc;->JsonMemberName()Lcom/htc/gson/JsonPrimitive;

    move-result-object v0

    .line 117
    .local v0, property:Lcom/htc/gson/JsonPrimitive;
    const/16 v2, 0x1e

    invoke-direct {p0, v2}, Lcom/htc/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/htc/gson/Token;

    .line 118
    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavacc;->JsonValue()Lcom/htc/gson/JsonElement;

    move-result-object v1

    .line 119
    .local v1, value:Lcom/htc/gson/JsonElement;
    invoke-virtual {v0}, Lcom/htc/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Lcom/htc/gson/JsonObject;->add(Ljava/lang/String;Lcom/htc/gson/JsonElement;)V

    .line 120
    return-void
.end method

.method private jj_2_1(I)Z
    .locals 4
    .parameter "xla"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 433
    iput p1, p0, Lcom/htc/gson/JsonParserJavacc;->jj_la:I

    iget-object v3, p0, Lcom/htc/gson/JsonParserJavacc;->token:Lcom/htc/gson/Token;

    iput-object v3, p0, Lcom/htc/gson/JsonParserJavacc;->jj_scanpos:Lcom/htc/gson/Token;

    iput-object v3, p0, Lcom/htc/gson/JsonParserJavacc;->jj_lastpos:Lcom/htc/gson/Token;

    .line 434
    :try_start_0
    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavacc;->jj_3_1()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/htc/gson/JsonParserJavacc$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 436
    :goto_0
    invoke-direct {p0, v2, p1}, Lcom/htc/gson/JsonParserJavacc;->jj_save(II)V

    :goto_1
    return v1

    :cond_0
    move v1, v2

    .line 434
    goto :goto_0

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, ls:Lcom/htc/gson/JsonParserJavacc$LookaheadSuccess;
    invoke-direct {p0, v2, p1}, Lcom/htc/gson/JsonParserJavacc;->jj_save(II)V

    goto :goto_1

    .end local v0           #ls:Lcom/htc/gson/JsonParserJavacc$LookaheadSuccess;
    :catchall_0
    move-exception v1

    invoke-direct {p0, v2, p1}, Lcom/htc/gson/JsonParserJavacc;->jj_save(II)V

    throw v1
.end method

.method private jj_3R_2()Z
    .locals 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/htc/gson/JsonParserJavacc;->jj_scanpos:Lcom/htc/gson/Token;

    .line 447
    .local v0, xsp:Lcom/htc/gson/Token;
    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavacc;->jj_3R_3()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 448
    iput-object v0, p0, Lcom/htc/gson/JsonParserJavacc;->jj_scanpos:Lcom/htc/gson/Token;

    .line 449
    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavacc;->jj_3R_4()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 451
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private jj_3R_3()Z
    .locals 1

    .prologue
    .line 440
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/htc/gson/JsonParserJavacc;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 441
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private jj_3R_4()Z
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/htc/gson/JsonParserJavacc;->jj_scanpos:Lcom/htc/gson/Token;

    .line 462
    .local v0, xsp:Lcom/htc/gson/Token;
    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavacc;->jj_3R_5()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/htc/gson/JsonParserJavacc;->jj_scanpos:Lcom/htc/gson/Token;

    .line 463
    :cond_0
    const/16 v1, 0x9

    invoke-direct {p0, v1}, Lcom/htc/gson/JsonParserJavacc;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 464
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private jj_3R_5()Z
    .locals 1

    .prologue
    .line 455
    const/16 v0, 0x21

    invoke-direct {p0, v0}, Lcom/htc/gson/JsonParserJavacc;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 456
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private jj_3_1()Z
    .locals 1

    .prologue
    .line 468
    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavacc;->jj_3R_2()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 469
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private jj_add_error_token(II)V
    .locals 6
    .parameter "kind"
    .parameter "pos"

    .prologue
    .line 685
    const/16 v3, 0x64

    if-lt p2, v3, :cond_1

    .line 707
    :cond_0
    :goto_0
    return-void

    .line 686
    :cond_1
    iget v3, p0, Lcom/htc/gson/JsonParserJavacc;->jj_endpos:I

    add-int/lit8 v3, v3, 0x1

    if-ne p2, v3, :cond_2

    .line 687
    iget-object v3, p0, Lcom/htc/gson/JsonParserJavacc;->jj_lasttokens:[I

    iget v4, p0, Lcom/htc/gson/JsonParserJavacc;->jj_endpos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/htc/gson/JsonParserJavacc;->jj_endpos:I

    aput p1, v3, v4

    goto :goto_0

    .line 688
    :cond_2
    iget v3, p0, Lcom/htc/gson/JsonParserJavacc;->jj_endpos:I

    if-eqz v3, :cond_0

    .line 689
    iget v3, p0, Lcom/htc/gson/JsonParserJavacc;->jj_endpos:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/htc/gson/JsonParserJavacc;->jj_expentry:[I

    .line 690
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v3, p0, Lcom/htc/gson/JsonParserJavacc;->jj_endpos:I

    if-ge v0, v3, :cond_3

    .line 691
    iget-object v3, p0, Lcom/htc/gson/JsonParserJavacc;->jj_expentry:[I

    iget-object v4, p0, Lcom/htc/gson/JsonParserJavacc;->jj_lasttokens:[I

    aget v4, v4, v0

    aput v4, v3, v0

    .line 690
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 693
    :cond_3
    iget-object v3, p0, Lcom/htc/gson/JsonParserJavacc;->jj_expentries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 694
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    move-object v2, v3

    check-cast v2, [I

    .line 695
    .local v2, oldentry:[I
    array-length v3, v2

    iget-object v4, p0, Lcom/htc/gson/JsonParserJavacc;->jj_expentry:[I

    array-length v4, v4

    if-ne v3, v4, :cond_4

    .line 696
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/htc/gson/JsonParserJavacc;->jj_expentry:[I

    array-length v3, v3

    if-ge v0, v3, :cond_5

    .line 697
    aget v3, v2, v0

    iget-object v4, p0, Lcom/htc/gson/JsonParserJavacc;->jj_expentry:[I

    aget v4, v4, v0

    if-ne v3, v4, :cond_4

    .line 696
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 701
    :cond_5
    iget-object v3, p0, Lcom/htc/gson/JsonParserJavacc;->jj_expentries:Ljava/util/List;

    iget-object v4, p0, Lcom/htc/gson/JsonParserJavacc;->jj_expentry:[I

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 705
    .end local v2           #oldentry:[I
    :cond_6
    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/htc/gson/JsonParserJavacc;->jj_lasttokens:[I

    iput p2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_endpos:I

    add-int/lit8 v4, p2, -0x1

    aput p1, v3, v4

    goto :goto_0
.end method

.method private jj_consume_token(I)Lcom/htc/gson/Token;
    .locals 5
    .parameter "kind"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/gson/ParseException;
        }
    .end annotation

    .prologue
    .line 598
    iget-object v2, p0, Lcom/htc/gson/JsonParserJavacc;->token:Lcom/htc/gson/Token;

    .local v2, oldToken:Lcom/htc/gson/Token;
    iget-object v3, v2, Lcom/htc/gson/Token;->next:Lcom/htc/gson/Token;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/gson/JsonParserJavacc;->token:Lcom/htc/gson/Token;

    iget-object v3, v3, Lcom/htc/gson/Token;->next:Lcom/htc/gson/Token;

    iput-object v3, p0, Lcom/htc/gson/JsonParserJavacc;->token:Lcom/htc/gson/Token;

    .line 600
    :goto_0
    const/4 v3, -0x1

    iput v3, p0, Lcom/htc/gson/JsonParserJavacc;->jj_ntk:I

    .line 601
    iget-object v3, p0, Lcom/htc/gson/JsonParserJavacc;->token:Lcom/htc/gson/Token;

    iget v3, v3, Lcom/htc/gson/Token;->kind:I

    if-ne v3, p1, :cond_4

    .line 602
    iget v3, p0, Lcom/htc/gson/JsonParserJavacc;->jj_gen:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/gson/JsonParserJavacc;->jj_gen:I

    .line 603
    iget v3, p0, Lcom/htc/gson/JsonParserJavacc;->jj_gc:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/gson/JsonParserJavacc;->jj_gc:I

    const/16 v4, 0x64

    if-le v3, v4, :cond_3

    .line 604
    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/gson/JsonParserJavacc;->jj_gc:I

    .line 605
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/htc/gson/JsonParserJavacc;->jj_2_rtns:[Lcom/htc/gson/JsonParserJavacc$JJCalls;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 606
    iget-object v3, p0, Lcom/htc/gson/JsonParserJavacc;->jj_2_rtns:[Lcom/htc/gson/JsonParserJavacc$JJCalls;

    aget-object v0, v3, v1

    .line 607
    .local v0, c:Lcom/htc/gson/JsonParserJavacc$JJCalls;
    :goto_2
    if-eqz v0, :cond_2

    .line 608
    iget v3, v0, Lcom/htc/gson/JsonParserJavacc$JJCalls;->gen:I

    iget v4, p0, Lcom/htc/gson/JsonParserJavacc;->jj_gen:I

    if-ge v3, v4, :cond_0

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/htc/gson/JsonParserJavacc$JJCalls;->first:Lcom/htc/gson/Token;

    .line 609
    :cond_0
    iget-object v0, v0, Lcom/htc/gson/JsonParserJavacc$JJCalls;->next:Lcom/htc/gson/JsonParserJavacc$JJCalls;

    goto :goto_2

    .line 599
    .end local v0           #c:Lcom/htc/gson/JsonParserJavacc$JJCalls;
    .end local v1           #i:I
    :cond_1
    iget-object v3, p0, Lcom/htc/gson/JsonParserJavacc;->token:Lcom/htc/gson/Token;

    iget-object v4, p0, Lcom/htc/gson/JsonParserJavacc;->token_source:Lcom/htc/gson/JsonParserJavaccTokenManager;

    invoke-virtual {v4}, Lcom/htc/gson/JsonParserJavaccTokenManager;->getNextToken()Lcom/htc/gson/Token;

    move-result-object v4

    iput-object v4, v3, Lcom/htc/gson/Token;->next:Lcom/htc/gson/Token;

    iput-object v4, p0, Lcom/htc/gson/JsonParserJavacc;->token:Lcom/htc/gson/Token;

    goto :goto_0

    .line 605
    .restart local v0       #c:Lcom/htc/gson/JsonParserJavacc$JJCalls;
    .restart local v1       #i:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 613
    .end local v0           #c:Lcom/htc/gson/JsonParserJavacc$JJCalls;
    .end local v1           #i:I
    :cond_3
    iget-object v3, p0, Lcom/htc/gson/JsonParserJavacc;->token:Lcom/htc/gson/Token;

    return-object v3

    .line 615
    :cond_4
    iput-object v2, p0, Lcom/htc/gson/JsonParserJavacc;->token:Lcom/htc/gson/Token;

    .line 616
    iput p1, p0, Lcom/htc/gson/JsonParserJavacc;->jj_kind:I

    .line 617
    invoke-virtual {p0}, Lcom/htc/gson/JsonParserJavacc;->generateParseException()Lcom/htc/gson/ParseException;

    move-result-object v3

    throw v3
.end method

.method private static jj_la1_init_0()V
    .locals 1

    .prologue
    .line 503
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/gson/JsonParserJavacc;->jj_la1_0:[I

    .line 504
    return-void

    .line 503
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x4t
        0xc0t 0x7t 0x3t 0x88t
        0xc1t 0x7t 0x3t 0x8ct
        0x0t 0x18t 0x3t 0x0t
        0x0t 0x0t 0x0t 0x20t
        0x0t 0x18t 0x3t 0x0t
        0x0t 0x0t 0x0t 0x20t
        0xc0t 0x7t 0x3t 0x88t
        0xc0t 0x7t 0x3t 0x88t
        0x40t 0x7t 0x3t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x3t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x18t 0x0t 0x0t
        0x0t 0x0t 0x3t 0x0t
    .end array-data
.end method

.method private static jj_la1_init_1()V
    .locals 1

    .prologue
    .line 506
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/gson/JsonParserJavacc;->jj_la1_1:[I

    .line 507
    return-void

    .line 506
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private jj_ntk()I
    .locals 2

    .prologue
    .line 672
    iget-object v0, p0, Lcom/htc/gson/JsonParserJavacc;->token:Lcom/htc/gson/Token;

    iget-object v0, v0, Lcom/htc/gson/Token;->next:Lcom/htc/gson/Token;

    iput-object v0, p0, Lcom/htc/gson/JsonParserJavacc;->jj_nt:Lcom/htc/gson/Token;

    if-nez v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/htc/gson/JsonParserJavacc;->token:Lcom/htc/gson/Token;

    iget-object v1, p0, Lcom/htc/gson/JsonParserJavacc;->token_source:Lcom/htc/gson/JsonParserJavaccTokenManager;

    invoke-virtual {v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->getNextToken()Lcom/htc/gson/Token;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/gson/Token;->next:Lcom/htc/gson/Token;

    iget v0, v1, Lcom/htc/gson/Token;->kind:I

    iput v0, p0, Lcom/htc/gson/JsonParserJavacc;->jj_ntk:I

    .line 675
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/gson/JsonParserJavacc;->jj_nt:Lcom/htc/gson/Token;

    iget v0, v0, Lcom/htc/gson/Token;->kind:I

    iput v0, p0, Lcom/htc/gson/JsonParserJavacc;->jj_ntk:I

    goto :goto_0
.end method

.method private jj_rescan_token()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 767
    iput-boolean v4, p0, Lcom/htc/gson/JsonParserJavacc;->jj_rescan:Z

    .line 768
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_2

    .line 770
    :try_start_0
    iget-object v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_2_rtns:[Lcom/htc/gson/JsonParserJavacc$JJCalls;

    aget-object v1, v2, v0

    .line 772
    .local v1, p:Lcom/htc/gson/JsonParserJavacc$JJCalls;
    :cond_0
    iget v2, v1, Lcom/htc/gson/JsonParserJavacc$JJCalls;->gen:I

    iget v3, p0, Lcom/htc/gson/JsonParserJavacc;->jj_gen:I

    if-le v2, v3, :cond_1

    .line 773
    iget v2, v1, Lcom/htc/gson/JsonParserJavacc$JJCalls;->arg:I

    iput v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_la:I

    iget-object v2, v1, Lcom/htc/gson/JsonParserJavacc$JJCalls;->first:Lcom/htc/gson/Token;

    iput-object v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_scanpos:Lcom/htc/gson/Token;

    iput-object v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_lastpos:Lcom/htc/gson/Token;

    .line 774
    packed-switch v0, :pswitch_data_0

    .line 778
    :cond_1
    :goto_1
    iget-object v1, v1, Lcom/htc/gson/JsonParserJavacc$JJCalls;->next:Lcom/htc/gson/JsonParserJavacc$JJCalls;

    .line 779
    if-nez v1, :cond_0

    .line 768
    .end local v1           #p:Lcom/htc/gson/JsonParserJavacc$JJCalls;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 775
    .restart local v1       #p:Lcom/htc/gson/JsonParserJavacc$JJCalls;
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavacc;->jj_3_1()Z
    :try_end_0
    .catch Lcom/htc/gson/JsonParserJavacc$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 780
    .end local v1           #p:Lcom/htc/gson/JsonParserJavacc$JJCalls;
    :catch_0
    move-exception v2

    goto :goto_2

    .line 782
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_rescan:Z

    .line 783
    return-void

    .line 774
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private jj_save(II)V
    .locals 4
    .parameter "index"
    .parameter "xla"

    .prologue
    .line 786
    iget-object v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_2_rtns:[Lcom/htc/gson/JsonParserJavacc$JJCalls;

    aget-object v0, v2, p1

    .line 787
    .local v0, p:Lcom/htc/gson/JsonParserJavacc$JJCalls;
    :goto_0
    iget v2, v0, Lcom/htc/gson/JsonParserJavacc$JJCalls;->gen:I

    iget v3, p0, Lcom/htc/gson/JsonParserJavacc;->jj_gen:I

    if-le v2, v3, :cond_0

    .line 788
    iget-object v2, v0, Lcom/htc/gson/JsonParserJavacc$JJCalls;->next:Lcom/htc/gson/JsonParserJavacc$JJCalls;

    if-nez v2, :cond_1

    new-instance v1, Lcom/htc/gson/JsonParserJavacc$JJCalls;

    invoke-direct {v1}, Lcom/htc/gson/JsonParserJavacc$JJCalls;-><init>()V

    iput-object v1, v0, Lcom/htc/gson/JsonParserJavacc$JJCalls;->next:Lcom/htc/gson/JsonParserJavacc$JJCalls;

    .end local v0           #p:Lcom/htc/gson/JsonParserJavacc$JJCalls;
    .local v1, p:Lcom/htc/gson/JsonParserJavacc$JJCalls;
    move-object v0, v1

    .line 791
    .end local v1           #p:Lcom/htc/gson/JsonParserJavacc$JJCalls;
    .restart local v0       #p:Lcom/htc/gson/JsonParserJavacc$JJCalls;
    :cond_0
    iget v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_gen:I

    add-int/2addr v2, p2

    iget v3, p0, Lcom/htc/gson/JsonParserJavacc;->jj_la:I

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/htc/gson/JsonParserJavacc$JJCalls;->gen:I

    iget-object v2, p0, Lcom/htc/gson/JsonParserJavacc;->token:Lcom/htc/gson/Token;

    iput-object v2, v0, Lcom/htc/gson/JsonParserJavacc$JJCalls;->first:Lcom/htc/gson/Token;

    iput p2, v0, Lcom/htc/gson/JsonParserJavacc$JJCalls;->arg:I

    .line 792
    return-void

    .line 789
    :cond_1
    iget-object v0, v0, Lcom/htc/gson/JsonParserJavacc$JJCalls;->next:Lcom/htc/gson/JsonParserJavacc$JJCalls;

    goto :goto_0
.end method

.method private jj_scan_token(I)Z
    .locals 4
    .parameter "kind"

    .prologue
    .line 623
    iget-object v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_scanpos:Lcom/htc/gson/Token;

    iget-object v3, p0, Lcom/htc/gson/JsonParserJavacc;->jj_lastpos:Lcom/htc/gson/Token;

    if-ne v2, v3, :cond_1

    .line 624
    iget v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_la:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_la:I

    .line 625
    iget-object v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_scanpos:Lcom/htc/gson/Token;

    iget-object v2, v2, Lcom/htc/gson/Token;->next:Lcom/htc/gson/Token;

    if-nez v2, :cond_0

    .line 626
    iget-object v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_scanpos:Lcom/htc/gson/Token;

    iget-object v3, p0, Lcom/htc/gson/JsonParserJavacc;->token_source:Lcom/htc/gson/JsonParserJavaccTokenManager;

    invoke-virtual {v3}, Lcom/htc/gson/JsonParserJavaccTokenManager;->getNextToken()Lcom/htc/gson/Token;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/gson/Token;->next:Lcom/htc/gson/Token;

    iput-object v3, p0, Lcom/htc/gson/JsonParserJavacc;->jj_scanpos:Lcom/htc/gson/Token;

    iput-object v3, p0, Lcom/htc/gson/JsonParserJavacc;->jj_lastpos:Lcom/htc/gson/Token;

    .line 633
    :goto_0
    iget-boolean v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_rescan:Z

    if-eqz v2, :cond_3

    .line 634
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v1, p0, Lcom/htc/gson/JsonParserJavacc;->token:Lcom/htc/gson/Token;

    .line 635
    .local v1, tok:Lcom/htc/gson/Token;
    :goto_1
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_scanpos:Lcom/htc/gson/Token;

    if-eq v1, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    iget-object v1, v1, Lcom/htc/gson/Token;->next:Lcom/htc/gson/Token;

    goto :goto_1

    .line 628
    .end local v0           #i:I
    .end local v1           #tok:Lcom/htc/gson/Token;
    :cond_0
    iget-object v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_scanpos:Lcom/htc/gson/Token;

    iget-object v2, v2, Lcom/htc/gson/Token;->next:Lcom/htc/gson/Token;

    iput-object v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_scanpos:Lcom/htc/gson/Token;

    iput-object v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_lastpos:Lcom/htc/gson/Token;

    goto :goto_0

    .line 631
    :cond_1
    iget-object v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_scanpos:Lcom/htc/gson/Token;

    iget-object v2, v2, Lcom/htc/gson/Token;->next:Lcom/htc/gson/Token;

    iput-object v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_scanpos:Lcom/htc/gson/Token;

    goto :goto_0

    .line 636
    .restart local v0       #i:I
    .restart local v1       #tok:Lcom/htc/gson/Token;
    :cond_2
    if-eqz v1, :cond_3

    invoke-direct {p0, p1, v0}, Lcom/htc/gson/JsonParserJavacc;->jj_add_error_token(II)V

    .line 638
    .end local v0           #i:I
    .end local v1           #tok:Lcom/htc/gson/Token;
    :cond_3
    iget-object v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_scanpos:Lcom/htc/gson/Token;

    iget v2, v2, Lcom/htc/gson/Token;->kind:I

    if-eq v2, p1, :cond_4

    const/4 v2, 0x1

    .line 640
    :goto_2
    return v2

    .line 639
    :cond_4
    iget v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_la:I

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_scanpos:Lcom/htc/gson/Token;

    iget-object v3, p0, Lcom/htc/gson/JsonParserJavacc;->jj_lastpos:Lcom/htc/gson/Token;

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_ls:Lcom/htc/gson/JsonParserJavacc$LookaheadSuccess;

    throw v2

    .line 640
    :cond_5
    const/4 v2, 0x0

    goto :goto_2
.end method


# virtual methods
.method public ReInit(Lcom/htc/gson/JsonParserJavaccTokenManager;)V
    .locals 3
    .parameter "tm"

    .prologue
    const/4 v2, -0x1

    .line 588
    iput-object p1, p0, Lcom/htc/gson/JsonParserJavacc;->token_source:Lcom/htc/gson/JsonParserJavaccTokenManager;

    .line 589
    new-instance v1, Lcom/htc/gson/Token;

    invoke-direct {v1}, Lcom/htc/gson/Token;-><init>()V

    iput-object v1, p0, Lcom/htc/gson/JsonParserJavacc;->token:Lcom/htc/gson/Token;

    .line 590
    iput v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_ntk:I

    .line 591
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/gson/JsonParserJavacc;->jj_gen:I

    .line 592
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/gson/JsonParserJavacc;->jj_la1:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 593
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/htc/gson/JsonParserJavacc;->jj_2_rtns:[Lcom/htc/gson/JsonParserJavacc$JJCalls;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/htc/gson/JsonParserJavacc;->jj_2_rtns:[Lcom/htc/gson/JsonParserJavacc$JJCalls;

    new-instance v2, Lcom/htc/gson/JsonParserJavacc$JJCalls;

    invoke-direct {v2}, Lcom/htc/gson/JsonParserJavacc$JJCalls;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 594
    :cond_1
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 533
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/gson/JsonParserJavacc;->ReInit(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 534
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .parameter "stream"
    .parameter "encoding"

    .prologue
    const/4 v5, -0x1

    .line 541
    :try_start_0
    iget-object v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_input_stream:Lcom/htc/gson/SimpleCharStream;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, p1, p2, v3, v4}, Lcom/htc/gson/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    iget-object v2, p0, Lcom/htc/gson/JsonParserJavacc;->token_source:Lcom/htc/gson/JsonParserJavaccTokenManager;

    iget-object v3, p0, Lcom/htc/gson/JsonParserJavacc;->jj_input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v2, v3}, Lcom/htc/gson/JsonParserJavaccTokenManager;->ReInit(Lcom/htc/gson/SimpleCharStream;)V

    .line 543
    new-instance v2, Lcom/htc/gson/Token;

    invoke-direct {v2}, Lcom/htc/gson/Token;-><init>()V

    iput-object v2, p0, Lcom/htc/gson/JsonParserJavacc;->token:Lcom/htc/gson/Token;

    .line 544
    iput v5, p0, Lcom/htc/gson/JsonParserJavacc;->jj_ntk:I

    .line 545
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_gen:I

    .line 546
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v2, 0x12

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_la1:[I

    aput v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 541
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 547
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #i:I
    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_2_rtns:[Lcom/htc/gson/JsonParserJavacc$JJCalls;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_2_rtns:[Lcom/htc/gson/JsonParserJavacc$JJCalls;

    new-instance v3, Lcom/htc/gson/JsonParserJavacc$JJCalls;

    invoke-direct {v3}, Lcom/htc/gson/JsonParserJavacc$JJCalls;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 548
    :cond_1
    return-void
.end method

.method public ReInit(Ljava/io/Reader;)V
    .locals 4
    .parameter "stream"

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 563
    iget-object v1, p0, Lcom/htc/gson/JsonParserJavacc;->jj_input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v1, p1, v2, v2}, Lcom/htc/gson/SimpleCharStream;->ReInit(Ljava/io/Reader;II)V

    .line 564
    iget-object v1, p0, Lcom/htc/gson/JsonParserJavacc;->token_source:Lcom/htc/gson/JsonParserJavaccTokenManager;

    iget-object v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_input_stream:Lcom/htc/gson/SimpleCharStream;

    invoke-virtual {v1, v2}, Lcom/htc/gson/JsonParserJavaccTokenManager;->ReInit(Lcom/htc/gson/SimpleCharStream;)V

    .line 565
    new-instance v1, Lcom/htc/gson/Token;

    invoke-direct {v1}, Lcom/htc/gson/Token;-><init>()V

    iput-object v1, p0, Lcom/htc/gson/JsonParserJavacc;->token:Lcom/htc/gson/Token;

    .line 566
    iput v3, p0, Lcom/htc/gson/JsonParserJavacc;->jj_ntk:I

    .line 567
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/gson/JsonParserJavacc;->jj_gen:I

    .line 568
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/gson/JsonParserJavacc;->jj_la1:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 569
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/htc/gson/JsonParserJavacc;->jj_2_rtns:[Lcom/htc/gson/JsonParserJavacc$JJCalls;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/htc/gson/JsonParserJavacc;->jj_2_rtns:[Lcom/htc/gson/JsonParserJavacc$JJCalls;

    new-instance v2, Lcom/htc/gson/JsonParserJavacc$JJCalls;

    invoke-direct {v2}, Lcom/htc/gson/JsonParserJavacc$JJCalls;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 570
    :cond_1
    return-void
.end method

.method public final disable_tracing()V
    .locals 0

    .prologue
    .line 764
    return-void
.end method

.method public final enable_tracing()V
    .locals 0

    .prologue
    .line 756
    return-void
.end method

.method public generateParseException()Lcom/htc/gson/ParseException;
    .locals 9

    .prologue
    const/16 v8, 0x23

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 715
    iget-object v4, p0, Lcom/htc/gson/JsonParserJavacc;->jj_expentries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 716
    new-array v3, v8, [Z

    .line 717
    .local v3, la1tokens:[Z
    iget v4, p0, Lcom/htc/gson/JsonParserJavacc;->jj_kind:I

    if-ltz v4, :cond_0

    .line 718
    iget v4, p0, Lcom/htc/gson/JsonParserJavacc;->jj_kind:I

    aput-boolean v6, v3, v4

    .line 719
    const/4 v4, -0x1

    iput v4, p0, Lcom/htc/gson/JsonParserJavacc;->jj_kind:I

    .line 721
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v4, 0x12

    if-ge v1, v4, :cond_4

    .line 722
    iget-object v4, p0, Lcom/htc/gson/JsonParserJavacc;->jj_la1:[I

    aget v4, v4, v1

    iget v5, p0, Lcom/htc/gson/JsonParserJavacc;->jj_gen:I

    if-ne v4, v5, :cond_3

    .line 723
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    const/16 v4, 0x20

    if-ge v2, v4, :cond_3

    .line 724
    sget-object v4, Lcom/htc/gson/JsonParserJavacc;->jj_la1_0:[I

    aget v4, v4, v1

    shl-int v5, v6, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    .line 725
    aput-boolean v6, v3, v2

    .line 727
    :cond_1
    sget-object v4, Lcom/htc/gson/JsonParserJavacc;->jj_la1_1:[I

    aget v4, v4, v1

    shl-int v5, v6, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    .line 728
    add-int/lit8 v4, v2, 0x20

    aput-boolean v6, v3, v4

    .line 723
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 721
    .end local v2           #j:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 733
    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v8, :cond_6

    .line 734
    aget-boolean v4, v3, v1

    if-eqz v4, :cond_5

    .line 735
    new-array v4, v6, [I

    iput-object v4, p0, Lcom/htc/gson/JsonParserJavacc;->jj_expentry:[I

    .line 736
    iget-object v4, p0, Lcom/htc/gson/JsonParserJavacc;->jj_expentry:[I

    aput v1, v4, v7

    .line 737
    iget-object v4, p0, Lcom/htc/gson/JsonParserJavacc;->jj_expentries:Ljava/util/List;

    iget-object v5, p0, Lcom/htc/gson/JsonParserJavacc;->jj_expentry:[I

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 733
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 740
    :cond_6
    iput v7, p0, Lcom/htc/gson/JsonParserJavacc;->jj_endpos:I

    .line 741
    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavacc;->jj_rescan_token()V

    .line 742
    invoke-direct {p0, v7, v7}, Lcom/htc/gson/JsonParserJavacc;->jj_add_error_token(II)V

    .line 743
    iget-object v4, p0, Lcom/htc/gson/JsonParserJavacc;->jj_expentries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [[I

    .line 744
    .local v0, exptokseq:[[I
    const/4 v1, 0x0

    :goto_3
    iget-object v4, p0, Lcom/htc/gson/JsonParserJavacc;->jj_expentries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 745
    iget-object v4, p0, Lcom/htc/gson/JsonParserJavacc;->jj_expentries:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    check-cast v4, [I

    aput-object v4, v0, v1

    .line 744
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 747
    :cond_7
    new-instance v4, Lcom/htc/gson/ParseException;

    iget-object v5, p0, Lcom/htc/gson/JsonParserJavacc;->token:Lcom/htc/gson/Token;

    sget-object v6, Lcom/htc/gson/JsonParserJavacc;->tokenImage:[Ljava/lang/String;

    invoke-direct {v4, v5, v0, v6}, Lcom/htc/gson/ParseException;-><init>(Lcom/htc/gson/Token;[[I[Ljava/lang/String;)V

    return-object v4
.end method

.method public final getNextToken()Lcom/htc/gson/Token;
    .locals 2

    .prologue
    .line 650
    iget-object v0, p0, Lcom/htc/gson/JsonParserJavacc;->token:Lcom/htc/gson/Token;

    iget-object v0, v0, Lcom/htc/gson/Token;->next:Lcom/htc/gson/Token;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/gson/JsonParserJavacc;->token:Lcom/htc/gson/Token;

    iget-object v0, v0, Lcom/htc/gson/Token;->next:Lcom/htc/gson/Token;

    iput-object v0, p0, Lcom/htc/gson/JsonParserJavacc;->token:Lcom/htc/gson/Token;

    .line 652
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/gson/JsonParserJavacc;->jj_ntk:I

    .line 653
    iget v0, p0, Lcom/htc/gson/JsonParserJavacc;->jj_gen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/gson/JsonParserJavacc;->jj_gen:I

    .line 654
    iget-object v0, p0, Lcom/htc/gson/JsonParserJavacc;->token:Lcom/htc/gson/Token;

    return-object v0

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/htc/gson/JsonParserJavacc;->token:Lcom/htc/gson/Token;

    iget-object v1, p0, Lcom/htc/gson/JsonParserJavacc;->token_source:Lcom/htc/gson/JsonParserJavaccTokenManager;

    invoke-virtual {v1}, Lcom/htc/gson/JsonParserJavaccTokenManager;->getNextToken()Lcom/htc/gson/Token;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/gson/Token;->next:Lcom/htc/gson/Token;

    iput-object v1, p0, Lcom/htc/gson/JsonParserJavacc;->token:Lcom/htc/gson/Token;

    goto :goto_0
.end method

.method public final getToken(I)Lcom/htc/gson/Token;
    .locals 4
    .parameter "index"

    .prologue
    .line 663
    iget-object v1, p0, Lcom/htc/gson/JsonParserJavacc;->token:Lcom/htc/gson/Token;

    .line 664
    .local v1, t:Lcom/htc/gson/Token;
    const/4 v0, 0x0

    .local v0, i:I
    move-object v2, v1

    .end local v1           #t:Lcom/htc/gson/Token;
    .local v2, t:Lcom/htc/gson/Token;
    :goto_0
    if-ge v0, p1, :cond_1

    .line 665
    iget-object v3, v2, Lcom/htc/gson/Token;->next:Lcom/htc/gson/Token;

    if-eqz v3, :cond_0

    iget-object v1, v2, Lcom/htc/gson/Token;->next:Lcom/htc/gson/Token;

    .line 664
    .end local v2           #t:Lcom/htc/gson/Token;
    .restart local v1       #t:Lcom/htc/gson/Token;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move-object v2, v1

    .end local v1           #t:Lcom/htc/gson/Token;
    .restart local v2       #t:Lcom/htc/gson/Token;
    goto :goto_0

    .line 666
    :cond_0
    iget-object v3, p0, Lcom/htc/gson/JsonParserJavacc;->token_source:Lcom/htc/gson/JsonParserJavaccTokenManager;

    invoke-virtual {v3}, Lcom/htc/gson/JsonParserJavaccTokenManager;->getNextToken()Lcom/htc/gson/Token;

    move-result-object v1

    iput-object v1, v2, Lcom/htc/gson/Token;->next:Lcom/htc/gson/Token;

    .end local v2           #t:Lcom/htc/gson/Token;
    .restart local v1       #t:Lcom/htc/gson/Token;
    goto :goto_1

    .line 668
    .end local v1           #t:Lcom/htc/gson/Token;
    .restart local v2       #t:Lcom/htc/gson/Token;
    :cond_1
    return-object v2
.end method

.method public final parse()Lcom/htc/gson/JsonElement;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/gson/ParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 15
    const/4 v0, 0x0

    .line 16
    .local v0, json:Lcom/htc/gson/JsonElement;
    iget v1, p0, Lcom/htc/gson/JsonParserJavacc;->jj_ntk:I

    if-ne v1, v4, :cond_0

    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavacc;->jj_ntk()I

    move-result v1

    :goto_0
    sparse-switch v1, :sswitch_data_0

    .line 67
    iget-object v1, p0, Lcom/htc/gson/JsonParserJavacc;->jj_la1:[I

    const/4 v2, 0x2

    iget v3, p0, Lcom/htc/gson/JsonParserJavacc;->jj_gen:I

    aput v3, v1, v2

    .line 68
    invoke-direct {p0, v4}, Lcom/htc/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/htc/gson/Token;

    .line 69
    new-instance v1, Lcom/htc/gson/ParseException;

    invoke-direct {v1}, Lcom/htc/gson/ParseException;-><init>()V

    throw v1

    .line 16
    :cond_0
    iget v1, p0, Lcom/htc/gson/JsonParserJavacc;->jj_ntk:I

    goto :goto_0

    .line 18
    :sswitch_0
    invoke-direct {p0, v3}, Lcom/htc/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/htc/gson/Token;

    .line 19
    new-instance v1, Lcom/htc/gson/JsonParseException;

    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    invoke-direct {v1, v2}, Lcom/htc/gson/JsonParseException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 32
    :sswitch_1
    iget v1, p0, Lcom/htc/gson/JsonParserJavacc;->jj_ntk:I

    if-ne v1, v4, :cond_1

    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavacc;->jj_ntk()I

    move-result v1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 37
    iget-object v1, p0, Lcom/htc/gson/JsonParserJavacc;->jj_la1:[I

    iget v2, p0, Lcom/htc/gson/JsonParserJavacc;->jj_gen:I

    aput v2, v1, v3

    .line 40
    :goto_2
    iget v1, p0, Lcom/htc/gson/JsonParserJavacc;->jj_ntk:I

    if-ne v1, v4, :cond_2

    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavacc;->jj_ntk()I

    move-result v1

    :goto_3
    sparse-switch v1, :sswitch_data_1

    .line 60
    iget-object v1, p0, Lcom/htc/gson/JsonParserJavacc;->jj_la1:[I

    const/4 v2, 0x1

    iget v3, p0, Lcom/htc/gson/JsonParserJavacc;->jj_gen:I

    aput v3, v1, v2

    .line 61
    invoke-direct {p0, v4}, Lcom/htc/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/htc/gson/Token;

    .line 62
    new-instance v1, Lcom/htc/gson/ParseException;

    invoke-direct {v1}, Lcom/htc/gson/ParseException;-><init>()V

    throw v1

    .line 32
    :cond_1
    iget v1, p0, Lcom/htc/gson/JsonParserJavacc;->jj_ntk:I

    goto :goto_1

    .line 34
    :pswitch_0
    const/16 v1, 0x1a

    invoke-direct {p0, v1}, Lcom/htc/gson/JsonParserJavacc;->jj_consume_token(I)Lcom/htc/gson/Token;

    goto :goto_2

    .line 40
    :cond_2
    iget v1, p0, Lcom/htc/gson/JsonParserJavacc;->jj_ntk:I

    goto :goto_3

    .line 42
    :sswitch_2
    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavacc;->JsonObject()Lcom/htc/gson/JsonObject;

    move-result-object v0

    .line 64
    :goto_4
    return-object v0

    .line 45
    :sswitch_3
    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavacc;->JsonArray()Lcom/htc/gson/JsonArray;

    move-result-object v0

    .line 46
    goto :goto_4

    .line 54
    :sswitch_4
    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavacc;->JsonPrimitive()Lcom/htc/gson/JsonPrimitive;

    move-result-object v0

    .line 55
    goto :goto_4

    .line 57
    :sswitch_5
    invoke-direct {p0}, Lcom/htc/gson/JsonParserJavacc;->JsonNull()Lcom/htc/gson/JsonNull;

    move-result-object v0

    .line 58
    goto :goto_4

    .line 16
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
        0x7 -> :sswitch_1
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0x10 -> :sswitch_1
        0x11 -> :sswitch_1
        0x1a -> :sswitch_1
        0x1b -> :sswitch_1
        0x1f -> :sswitch_1
        0x21 -> :sswitch_1
    .end sparse-switch

    .line 32
    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_0
    .end packed-switch

    .line 40
    :sswitch_data_1
    .sparse-switch
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0x8 -> :sswitch_4
        0x9 -> :sswitch_4
        0xa -> :sswitch_4
        0x10 -> :sswitch_4
        0x11 -> :sswitch_4
        0x1b -> :sswitch_2
        0x1f -> :sswitch_3
        0x21 -> :sswitch_4
    .end sparse-switch
.end method
