.class public Lcom/htc/messaging/utils/SmileyParser;
.super Ljava/lang/Object;
.source "SmileyParser.java"


# static fields
.field public static final HTC_SMILEY_RES_IDS:[I = null

.field public static final IME_SMILEY_RES_IDS:[I = null

.field public static final SMILEY_TEXT_LENGTH:I = 0x2

.field private static sInstance:Lcom/htc/messaging/utils/SmileyParser;

.field public static final usingIDS:[I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIMEsmileyTexts:[Ljava/lang/String;

.field private final mPattern:Ljava/util/regex/Pattern;

.field private final mPatternNoIME:Ljava/util/regex/Pattern;

.field private final mSmileyTexts:[Ljava/lang/String;

.field private final mSmileyToRes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 124
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/messaging/utils/SmileyParser;->IME_SMILEY_RES_IDS:[I

    .line 151
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/messaging/utils/SmileyParser;->HTC_SMILEY_RES_IDS:[I

    .line 193
    sget-object v0, Lcom/htc/messaging/utils/SmileyParser;->HTC_SMILEY_RES_IDS:[I

    sput-object v0, Lcom/htc/messaging/utils/SmileyParser;->usingIDS:[I

    .line 199
    return-void

    .line 124
    nop

    :array_0
    .array-data 0x4
        0x5ct 0x2t 0x8t 0x1t
        0x65t 0x2t 0x8t 0x1t
        0x61t 0x2t 0x8t 0x1t
        0x59t 0x2t 0x8t 0x1t
        0x67t 0x2t 0x8t 0x1t
        0x67t 0x2t 0x8t 0x1t
        0x63t 0x2t 0x8t 0x1t
        0x60t 0x2t 0x8t 0x1t
        0x5dt 0x2t 0x8t 0x1t
    .end array-data

    .line 151
    :array_1
    .array-data 0x4
        0x5ct 0x2t 0x8t 0x1t
        0x61t 0x2t 0x8t 0x1t
        0x65t 0x2t 0x8t 0x1t
        0x63t 0x2t 0x8t 0x1t
        0x62t 0x2t 0x8t 0x1t
        0x5dt 0x2t 0x8t 0x1t
        0x67t 0x2t 0x8t 0x1t
        0x58t 0x2t 0x8t 0x1t
        0x60t 0x2t 0x8t 0x1t
        0x5bt 0x2t 0x8t 0x1t
        0x5at 0x2t 0x8t 0x1t
        0x57t 0x2t 0x8t 0x1t
        0x64t 0x2t 0x8t 0x1t
        0x59t 0x2t 0x8t 0x1t
        0x5ft 0x2t 0x8t 0x1t
        0x5et 0x2t 0x8t 0x1t
        0x66t 0x2t 0x8t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 103
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ":-)"

    aput-object v1, v0, v4

    const-string v1, ":-("

    aput-object v1, v0, v3

    const-string v1, ";-)"

    aput-object v1, v0, v5

    const-string v1, ":-P"

    aput-object v1, v0, v6

    const-string v1, "=-O"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, ":-*"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ":O"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "B-)"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, ":-$"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, ":-!"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, ":-["

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "O:-)"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, ":-\\"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, ":\'("

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, ":-X"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, ":-D"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "o_O"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/messaging/utils/SmileyParser;->mSmileyTexts:[Ljava/lang/String;

    .line 65
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ":)"

    aput-object v1, v0, v4

    const-string v1, ";)"

    aput-object v1, v0, v3

    const-string v1, ":("

    aput-object v1, v0, v5

    const-string v1, ":\'("

    aput-object v1, v0, v6

    const-string v1, ":o"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, ":O"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ":P"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ":$"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, ":*"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/messaging/utils/SmileyParser;->mIMEsmileyTexts:[Ljava/lang/String;

    .line 104
    iput-object p1, p0, Lcom/htc/messaging/utils/SmileyParser;->mContext:Landroid/content/Context;

    .line 108
    invoke-direct {p0}, Lcom/htc/messaging/utils/SmileyParser;->buildSmileyToRes()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/messaging/utils/SmileyParser;->mSmileyToRes:Ljava/util/HashMap;

    .line 109
    invoke-direct {p0, v3}, Lcom/htc/messaging/utils/SmileyParser;->buildPattern(Z)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/messaging/utils/SmileyParser;->mPattern:Ljava/util/regex/Pattern;

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/messaging/utils/SmileyParser;->mPatternNoIME:Ljava/util/regex/Pattern;

    .line 115
    return-void
.end method

.method private buildPattern(Z)Ljava/util/regex/Pattern;
    .locals 8
    .parameter "withIME"

    .prologue
    const/16 v7, 0x7c

    .line 236
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/htc/messaging/utils/SmileyParser;->mSmileyTexts:[Ljava/lang/String;

    array-length v5, v5

    iget-object v6, p0, Lcom/htc/messaging/utils/SmileyParser;->mIMEsmileyTexts:[Ljava/lang/String;

    array-length v6, v6

    add-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x3

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 242
    .local v3, patternString:Ljava/lang/StringBuilder;
    const/16 v5, 0x28

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 243
    iget-object v0, p0, Lcom/htc/messaging/utils/SmileyParser;->mSmileyTexts:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 244
    .local v4, s:Ljava/lang/String;
    invoke-static {v4}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    .end local v4           #s:Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_1

    .line 250
    iget-object v0, p0, Lcom/htc/messaging/utils/SmileyParser;->mIMEsmileyTexts:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 251
    .restart local v4       #s:Ljava/lang/String;
    invoke-static {v4}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 250
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 261
    .end local v4           #s:Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const-string v7, ")"

    invoke-virtual {v3, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    return-object v5
.end method

.method private buildSmileyToRes()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    sget-object v2, Lcom/htc/messaging/utils/SmileyParser;->usingIDS:[I

    array-length v2, v2

    iget-object v3, p0, Lcom/htc/messaging/utils/SmileyParser;->mSmileyTexts:[Ljava/lang/String;

    array-length v3, v3

    if-eq v2, v3, :cond_0

    .line 209
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Smiley resource ID/text mismatch"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 212
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/htc/messaging/utils/SmileyParser;->mSmileyTexts:[Ljava/lang/String;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 214
    .local v1, smileyToRes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/htc/messaging/utils/SmileyParser;->mSmileyTexts:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 215
    iget-object v2, p0, Lcom/htc/messaging/utils/SmileyParser;->mSmileyTexts:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lcom/htc/messaging/utils/SmileyParser;->usingIDS:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/htc/messaging/utils/SmileyParser;->mIMEsmileyTexts:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 220
    iget-object v2, p0, Lcom/htc/messaging/utils/SmileyParser;->mIMEsmileyTexts:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lcom/htc/messaging/utils/SmileyParser;->IME_SMILEY_RES_IDS:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 224
    :cond_2
    return-object v1
.end method


# virtual methods
.method public addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "text"

    .prologue
    .line 276
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/messaging/utils/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public addSmileySpans(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 7
    .parameter "text"
    .parameter "withIMEpattern"

    .prologue
    .line 283
    if-nez p1, :cond_0

    const-string p1, ""

    .line 284
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 286
    .local v0, builder:Landroid/text/SpannableStringBuilder;
    const/4 v1, 0x0

    .line 288
    .local v1, matcher:Ljava/util/regex/Matcher;
    if-eqz p2, :cond_1

    .line 289
    iget-object v3, p0, Lcom/htc/messaging/utils/SmileyParser;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 297
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 299
    iget-object v3, p0, Lcom/htc/messaging/utils/SmileyParser;->mSmileyToRes:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 301
    .local v2, resId:I
    new-instance v3, Landroid/text/style/ImageSpan;

    iget-object v4, p0, Lcom/htc/messaging/utils/SmileyParser;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 291
    .end local v2           #resId:I
    :cond_1
    iget-object v3, p0, Lcom/htc/messaging/utils/SmileyParser;->mPatternNoIME:Ljava/util/regex/Pattern;

    if-nez v3, :cond_2

    .line 306
    .end local p1
    :goto_1
    return-object p1

    .line 294
    .restart local p1
    :cond_2
    iget-object v3, p0, Lcom/htc/messaging/utils/SmileyParser;->mPatternNoIME:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object p1, v0

    .line 306
    goto :goto_1
.end method

.method public hasSmiley(Ljava/lang/CharSequence;Z)Z
    .locals 3
    .parameter "text"
    .parameter "withIMEpattern"

    .prologue
    .line 316
    const/4 v0, 0x0

    .line 318
    .local v0, flag:Z
    const/4 v1, 0x0

    .line 320
    .local v1, matcher:Ljava/util/regex/Matcher;
    if-eqz p2, :cond_1

    .line 321
    iget-object v2, p0, Lcom/htc/messaging/utils/SmileyParser;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 325
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    const/4 v0, 0x1

    .line 327
    :cond_0
    return v0

    .line 323
    :cond_1
    iget-object v2, p0, Lcom/htc/messaging/utils/SmileyParser;->mPatternNoIME:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    goto :goto_0
.end method
