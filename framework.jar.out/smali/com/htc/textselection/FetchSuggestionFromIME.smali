.class public Lcom/htc/textselection/FetchSuggestionFromIME;
.super Ljava/lang/Object;
.source "FetchSuggestionFromIME.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/textselection/FetchSuggestionFromIME$QueryWorker;
    }
.end annotation


# static fields
.field static final AUTHORITY:Ljava/lang/String; = "htc_cime"

.field static final CACHE_SIZE:I = 0x64

.field static final CONTENT_DIRECTORY1:Ljava/lang/String; = "get_chinese_next_prediction"

.field static final HTCIMEProvider_CONTENT_URI:Landroid/net/Uri; = null

.field static final LOCAL_DEBUG:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "FetchSuggestionFromIME"

.field static final MAX_WORD_LENGTH:I = 0x4

.field static final SUGGESTION_DELIMITER:Ljava/lang/String; = "|"

.field public static final ZH_CN:Ljava/lang/String; = "2"

.field public static final ZH_TW:Ljava/lang/String; = "1"

.field static final htcime_rc:Landroid/net/Uri;


# instance fields
.field emptySuggest:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mProvider:Landroid/content/IContentProvider;

.field mProviderContext:Landroid/content/Context;

.field private mSueggestCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field s_e:[I

.field spliter:Ljava/util/regex/Pattern;

.field ti:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field ts:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    const-string v0, "content://htc_cime"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/textselection/FetchSuggestionFromIME;->HTCIMEProvider_CONTENT_URI:Landroid/net/Uri;

    .line 44
    sget-object v0, Lcom/htc/textselection/FetchSuggestionFromIME;->HTCIMEProvider_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "get_chinese_next_prediction"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/textselection/FetchSuggestionFromIME;->htcime_rc:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x64

    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 152
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/textselection/FetchSuggestionFromIME;->s_e:[I

    .line 253
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/htc/textselection/FetchSuggestionFromIME;->ts:Ljava/util/Vector;

    .line 254
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/htc/textselection/FetchSuggestionFromIME;->ti:Ljava/util/Vector;

    .line 60
    const-string v0, "\\|"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/textselection/FetchSuggestionFromIME;->spliter:Ljava/util/regex/Pattern;

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/htc/textselection/FetchSuggestionFromIME;->emptySuggest:Ljava/util/HashSet;

    .line 68
    new-instance v0, Lcom/htc/textselection/FetchSuggestionFromIME$1;

    const/high16 v1, 0x3f40

    const/4 v2, 0x1

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/htc/textselection/FetchSuggestionFromIME$1;-><init>(Lcom/htc/textselection/FetchSuggestionFromIME;IFZ)V

    iput-object v0, p0, Lcom/htc/textselection/FetchSuggestionFromIME;->mSueggestCache:Ljava/util/LinkedHashMap;

    .line 78
    return-void
.end method

.method public static isCJKS(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 399
    const/16 v0, 0x3000

    if-lt p0, v0, :cond_0

    const v0, 0x9fff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCJKS(Ljava/lang/String;)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 409
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/htc/textselection/FetchSuggestionFromIME;->isCJKS(C)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getSuggestionOf(Ljava/lang/String;Ljava/lang/String;)[[Ljava/lang/String;
    .locals 4
    .parameter "predicts"
    .parameter "lang"

    .prologue
    .line 240
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 241
    .local v2, size:I
    new-array v0, v2, [Ljava/lang/String;

    .line 243
    .local v0, chars:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 244
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 250
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/htc/textselection/FetchSuggestionFromIME;->getSuggestionOf([Ljava/lang/String;Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getSuggestionOf([Ljava/lang/String;Ljava/lang/String;)[[Ljava/lang/String;
    .locals 22
    .parameter "predicts"
    .parameter "lang"

    .prologue
    .line 262
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v2, v0

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->mProvider:Landroid/content/IContentProvider;

    if-nez v2, :cond_2

    .line 264
    :cond_0
    const/4 v2, 0x0

    check-cast v2, [[Ljava/lang/String;

    move-object/from16 v17, v2

    .line 389
    :cond_1
    :goto_0
    return-object v17

    .line 267
    :cond_2
    const-wide/16 v10, 0x0

    .local v10, _startTime:J
    const-wide/16 v8, 0x0

    .line 271
    .local v8, _endTime:J
    move-object/from16 v0, p1

    array-length v2, v0

    new-array v0, v2, [[Ljava/lang/String;

    move-object/from16 v17, v0

    .line 274
    .local v17, result:[[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->ts:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->ti:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 276
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    move-object/from16 v0, p1

    array-length v2, v0

    if-ge v14, v2, :cond_6

    .line 277
    aget-object v2, p1, v14

    invoke-static {v2}, Lcom/htc/textselection/FetchSuggestionFromIME;->isCJKS(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->emptySuggest:Ljava/util/HashSet;

    aget-object v3, p1, v14

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 276
    :cond_3
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 281
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->mSueggestCache:Ljava/util/LinkedHashMap;

    aget-object v3, p1, v14

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/ref/SoftReference;

    .line 283
    .local v21, value:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<[Ljava/lang/String;>;"
    if-eqz v21, :cond_5

    .line 284
    invoke-virtual/range {v21 .. v21}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    aput-object v2, v17, v14

    .line 290
    aget-object v2, v17, v14

    if-nez v2, :cond_3

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->mSueggestCache:Ljava/util/LinkedHashMap;

    aget-object v3, p1, v14

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->ts:Ljava/util/Vector;

    aget-object v3, p1, v14

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->ti:Ljava/util/Vector;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 299
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->ts:Ljava/util/Vector;

    aget-object v3, p1, v14

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->ti:Ljava/util/Vector;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 304
    .end local v21           #value:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<[Ljava/lang/String;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->ts:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->ts:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v6, v2, [Ljava/lang/String;

    .line 308
    .local v6, test:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->ts:Ljava/util/Vector;

    invoke-virtual {v2, v6}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->ts:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 321
    const/4 v12, 0x0

    .line 323
    .local v12, c:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->mProvider:Landroid/content/IContentProvider;

    sget-object v3, Lcom/htc/textselection/FetchSuggestionFromIME;->htcime_rc:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v7, p2

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 335
    :goto_3
    if-nez v12, :cond_7

    .line 336
    const/4 v2, 0x0

    check-cast v2, [[Ljava/lang/String;

    move-object/from16 v17, v2

    goto/16 :goto_0

    .line 324
    :catch_0
    move-exception v13

    .line 325
    .local v13, e:Landroid/os/RemoteException;
    const-string v2, "FetchSuggestionFromIME"

    const-string v3, "error!"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 338
    .end local v13           #e:Landroid/os/RemoteException;
    :cond_7
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 339
    const/4 v15, 0x0

    .line 342
    .local v15, index:I
    :cond_8
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 343
    .local v18, s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->ti:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 344
    if-eqz v18, :cond_a

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_a

    .line 348
    new-instance v19, Ljava/util/StringTokenizer;

    const-string/jumbo v2, "|"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    .local v19, tokenizer:Ljava/util/StringTokenizer;
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v20, v0

    .line 351
    .local v20, tokens:[Ljava/lang/String;
    const/16 v16, 0x0

    .line 352
    .local v16, j:I
    :goto_4
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 354
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v20, v16

    .line 355
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 358
    :cond_9
    aput-object v20, v17, v14

    .line 360
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->mSueggestCache:Ljava/util/LinkedHashMap;

    aget-object v3, p1, v14

    new-instance v4, Ljava/lang/ref/SoftReference;

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    .end local v16           #j:I
    .end local v19           #tokenizer:Ljava/util/StringTokenizer;
    .end local v20           #tokens:[Ljava/lang/String;
    :goto_5
    add-int/lit8 v15, v15, 0x1

    .line 376
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_8

    .line 380
    .end local v15           #index:I
    .end local v18           #s:Ljava/lang/String;
    :goto_6
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 365
    .restart local v15       #index:I
    .restart local v18       #s:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->emptySuggest:Ljava/util/HashSet;

    aget-object v3, p1, v14

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 378
    .end local v15           #index:I
    .end local v18           #s:Ljava/lang/String;
    :cond_b
    const/16 v17, 0x0

    check-cast v17, [[Ljava/lang/String;

    goto :goto_6
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/textselection/FetchSuggestionFromIME;->mProvider:Landroid/content/IContentProvider;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matchWord(Ljava/lang/CharSequence;ILjava/lang/String;)[I
    .locals 7
    .parameter "sentence"
    .parameter "index"
    .parameter "lang"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 132
    iget-object v3, p0, Lcom/htc/textselection/FetchSuggestionFromIME;->s_e:[I

    aput p2, v3, v5

    .line 133
    iget-object v3, p0, Lcom/htc/textselection/FetchSuggestionFromIME;->s_e:[I

    aput p2, v3, v6

    .line 134
    if-ltz p2, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v3, p2, :cond_0

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/htc/textselection/FetchSuggestionFromIME;->isCJKS(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 138
    :cond_0
    iget-object v3, p0, Lcom/htc/textselection/FetchSuggestionFromIME;->s_e:[I

    .line 149
    :goto_0
    return-object v3

    .line 141
    :cond_1
    add-int/lit8 v3, p2, -0x4

    add-int/lit8 v3, v3, 0x1

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 142
    .local v1, start:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v4, p2, 0x4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 144
    .local v0, end:I
    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, toStr:Ljava/lang/String;
    sub-int v3, p2, v1

    invoke-virtual {p0, v2, v3, p3}, Lcom/htc/textselection/FetchSuggestionFromIME;->matchWord(Ljava/lang/String;ILjava/lang/String;)[I

    .line 147
    iget-object v3, p0, Lcom/htc/textselection/FetchSuggestionFromIME;->s_e:[I

    aget v4, v3, v5

    add-int/2addr v4, v1

    aput v4, v3, v5

    .line 148
    iget-object v3, p0, Lcom/htc/textselection/FetchSuggestionFromIME;->s_e:[I

    aget v4, v3, v6

    add-int/2addr v4, v1

    aput v4, v3, v6

    .line 149
    iget-object v3, p0, Lcom/htc/textselection/FetchSuggestionFromIME;->s_e:[I

    goto :goto_0
.end method

.method public matchWord(Ljava/lang/String;ILjava/lang/String;)[I
    .locals 20
    .parameter "sentence"
    .parameter "index"
    .parameter "lang"

    .prologue
    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->s_e:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput p2, v17, v18

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->s_e:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aput p2, v17, v18

    .line 164
    if-ltz p2, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, p2

    if-le v0, v1, :cond_0

    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->charAt(I)C

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/htc/textselection/FetchSuggestionFromIME;->isCJKS(C)Z

    move-result v17

    if-nez v17, :cond_1

    .line 167
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->s_e:[I

    move-object/from16 v17, v0

    .line 235
    :goto_0
    return-object v17

    .line 169
    :cond_1
    const-wide/16 v5, 0x0

    .local v5, _startTime:J
    const-wide/16 v3, 0x0

    .line 175
    .local v3, _endTime:J
    const/16 v17, 0x0

    add-int/lit8 v18, p2, -0x4

    add-int/lit8 v18, v18, 0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 176
    .local v14, start:I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v18, p2, 0x4

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 179
    .local v7, end:I
    add-int/lit8 v17, p2, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v14, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/htc/textselection/FetchSuggestionFromIME;->getSuggestionOf(Ljava/lang/String;Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v15

    .line 191
    .local v15, suggests:[[Ljava/lang/String;
    if-nez v15, :cond_2

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->s_e:[I

    move-object/from16 v17, v0

    goto :goto_0

    .line 194
    :cond_2
    const/4 v10, 0x0

    .line 196
    .local v10, matchLen:I
    move/from16 v8, p2

    .local v8, i:I
    :goto_1
    if-lt v8, v14, :cond_7

    .line 197
    add-int/lit8 v17, v8, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 199
    .local v16, wordCand:Ljava/lang/String;
    sub-int v11, p2, v8

    .line 201
    .local v11, minLen:I
    sub-int v17, v8, v14

    aget-object v17, v15, v17

    if-eqz v17, :cond_3

    sub-int v17, v8, v14

    aget-object v17, v15, v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    if-eqz v17, :cond_3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_4

    .line 196
    :cond_3
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 206
    :cond_4
    const/4 v9, 0x0

    .local v9, j:I
    :goto_2
    sub-int v17, v8, v14

    aget-object v17, v15, v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_3

    .line 207
    sub-int v17, v8, v14

    aget-object v17, v15, v17

    aget-object v12, v17, v9

    .line 208
    .local v12, s:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v13, v17, 0x1

    .line 209
    .local v13, sl:I
    if-le v13, v11, :cond_5

    const/16 v17, 0x4

    move/from16 v0, v17

    if-gt v13, v0, :cond_5

    if-le v13, v10, :cond_5

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 212
    move v10, v13

    .line 213
    move/from16 v0, p2

    if-ne v8, v0, :cond_6

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->s_e:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput p2, v17, v18

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->s_e:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    add-int v19, p2, v10

    aput v19, v17, v18

    .line 206
    :cond_5
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 218
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->s_e:[I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v8, v17, v18

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->s_e:[I

    move-object/from16 v17, v0

    const/16 v18, 0x1

    add-int v19, v8, v10

    aput v19, v17, v18

    goto :goto_3

    .line 235
    .end local v9           #j:I
    .end local v11           #minLen:I
    .end local v12           #s:Ljava/lang/String;
    .end local v13           #sl:I
    .end local v16           #wordCand:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/textselection/FetchSuggestionFromIME;->s_e:[I

    move-object/from16 v17, v0

    goto/16 :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 87
    const-wide/16 v2, 0x0

    .local v2, _startTime:J
    const-wide/16 v0, 0x0

    .line 92
    .local v0, _endTime:J
    iget-object v6, p0, Lcom/htc/textselection/FetchSuggestionFromIME;->mProviderContext:Landroid/content/Context;

    if-ne v6, p1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v6, p0, Lcom/htc/textselection/FetchSuggestionFromIME;->mProviderContext:Landroid/content/Context;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/htc/textselection/FetchSuggestionFromIME;->mProvider:Landroid/content/IContentProvider;

    if-eqz v6, :cond_3

    .line 97
    iget-object v6, p0, Lcom/htc/textselection/FetchSuggestionFromIME;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 98
    .local v4, cr:Landroid/content/ContentResolver;
    iget-object v6, p0, Lcom/htc/textselection/FetchSuggestionFromIME;->mProvider:Landroid/content/IContentProvider;

    invoke-virtual {v4, v6}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 99
    const-string v6, "FetchSuggestionFromIME"

    const-string/jumbo v7, "release provider failed!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_2
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/textselection/FetchSuggestionFromIME;->mProvider:Landroid/content/IContentProvider;

    .line 110
    .end local v4           #cr:Landroid/content/ContentResolver;
    :cond_3
    iput-object p1, p0, Lcom/htc/textselection/FetchSuggestionFromIME;->mProviderContext:Landroid/content/Context;

    .line 111
    if-eqz p1, :cond_0

    .line 114
    iget-object v6, p0, Lcom/htc/textselection/FetchSuggestionFromIME;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 116
    .restart local v4       #cr:Landroid/content/ContentResolver;
    :try_start_0
    sget-object v6, Lcom/htc/textselection/FetchSuggestionFromIME;->HTCIMEProvider_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v6}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/textselection/FetchSuggestionFromIME;->mProvider:Landroid/content/IContentProvider;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v5

    .line 118
    .local v5, e:Ljava/lang/IllegalArgumentException;
    const-string v6, "FetchSuggestionFromIME"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Acquire provider HTCIMEProvider_CONTENT_URI failed:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
