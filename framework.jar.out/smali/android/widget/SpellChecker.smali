.class public Landroid/widget/SpellChecker;
.super Ljava/lang/Object;
.source "SpellChecker.java"

# interfaces
.implements Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SpellChecker$SpellParser;
    }
.end annotation


# static fields
.field public static final AVERAGE_WORD_LENGTH:I = 0x7

.field static final MAGIC_SEQ:I = 0x1c5ea

.field public static final MAX_NUMBER_OF_WORDS:I = 0x32

.field private static final SPELL_PAUSE_DURATION:I = 0x190

.field public static final WORD_ITERATOR_INTERVAL:I = 0x15e


# instance fields
.field final mCookie:I

.field private mCurrentLocale:Ljava/util/Locale;

.field private mIds:[I

.field private mLength:I

.field private mSpanSequenceCounter:I

.field private mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

.field mSpellCheckWord:Ljava/lang/String;

.field mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

.field private mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

.field private mSpellRunnable:Ljava/lang/Runnable;

.field private mTextServicesManager:Landroid/view/textservice/TextServicesManager;

.field private final mTextView:Landroid/widget/TextView;

.field private mWordIterator:Landroid/text/method/WordIterator;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 3
    .parameter "textView"

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-array v1, v2, [Landroid/widget/SpellChecker$SpellParser;

    iput-object v1, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    .line 75
    iput v2, p0, Landroid/widget/SpellChecker;->mSpanSequenceCounter:I

    .line 286
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckWord:Ljava/lang/String;

    .line 88
    iput-object p1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    .line 91
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->idealObjectArraySize(I)I

    move-result v0

    .line 92
    .local v0, size:I
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/SpellChecker;->mIds:[I

    .line 93
    new-array v1, v0, [Landroid/text/style/SpellCheckSpan;

    iput-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    .line 95
    iget-object v1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/widget/SpellChecker;->setLocale(Ljava/util/Locale;)V

    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, p0, Landroid/widget/SpellChecker;->mCookie:I

    .line 98
    return-void
.end method

.method static synthetic access$100(Landroid/widget/SpellChecker;)[Landroid/widget/SpellChecker$SpellParser;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/SpellChecker;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/SpellChecker;Landroid/text/Editable;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SpellChecker;->addSpellCheckSpan(Landroid/text/Editable;II)V

    return-void
.end method

.method static synthetic access$500(Landroid/widget/SpellChecker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/widget/SpellChecker;->spellCheck()V

    return-void
.end method

.method private addSpellCheckSpan(Landroid/text/Editable;II)V
    .locals 4
    .parameter "editable"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 184
    invoke-direct {p0}, Landroid/widget/SpellChecker;->nextSpellCheckSpanIndex()I

    move-result v0

    .line 185
    .local v0, index:I
    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    aget-object v1, v1, v0

    const/16 v2, 0x21

    invoke-interface {p1, v1, p2, p3, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 186
    iget-object v1, p0, Landroid/widget/SpellChecker;->mIds:[I

    iget v2, p0, Landroid/widget/SpellChecker;->mSpanSequenceCounter:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/widget/SpellChecker;->mSpanSequenceCounter:I

    aput v2, v1, v0

    .line 187
    return-void
.end method

.method private createMisspelledSuggestionSpan(Landroid/text/Editable;Landroid/view/textservice/SuggestionsInfo;Landroid/text/style/SpellCheckSpan;)V
    .locals 24
    .parameter "editable"
    .parameter "suggestionsInfo"
    .parameter "spellCheckSpan"

    .prologue
    .line 371
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v15

    .line 372
    .local v15, start:I
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 373
    .local v4, end:I
    if-ltz v15, :cond_0

    if-gt v4, v15, :cond_1

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    const-class v22, Landroid/text/style/SuggestionSpan;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v15, v4, v1}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Landroid/text/style/SuggestionSpan;

    .line 378
    .local v18, suggestionSpans:[Landroid/text/style/SuggestionSpan;
    move-object/from16 v0, v18

    array-length v8, v0

    .line 379
    .local v8, length:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v8, :cond_4

    .line 380
    aget-object v22, v18, v5

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    .line 381
    .local v13, spanStart:I
    aget-object v22, v18, v5

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    .line 382
    .local v12, spanEnd:I
    if-ne v13, v15, :cond_2

    if-eq v12, v4, :cond_3

    .line 384
    :cond_2
    const/16 v22, 0x0

    aput-object v22, v18, v5

    .line 379
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 388
    .end local v12           #spanEnd:I
    .end local v13           #spanStart:I
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionsCount()I

    move-result v20

    .line 390
    .local v20, suggestionsCount:I
    if-gtz v20, :cond_6

    .line 392
    const-class v22, Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Ljava/lang/String;

    .line 427
    .local v19, suggestions:[Ljava/lang/String;
    :cond_5
    :goto_2
    new-instance v17, Landroid/text/style/SuggestionSpan;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v22

    const/16 v23, 0x3

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    .line 429
    .local v17, suggestionSpan:Landroid/text/style/SuggestionSpan;
    const/16 v22, 0x21

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v22

    invoke-interface {v0, v1, v15, v4, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v15, v4, v1}, Landroid/widget/TextView;->invalidateRegion(IIZ)V

    goto :goto_0

    .line 394
    .end local v17           #suggestionSpan:Landroid/text/style/SuggestionSpan;
    .end local v19           #suggestions:[Ljava/lang/String;
    :cond_6
    const/4 v10, 0x0

    .line 395
    .local v10, numberOfSuggestions:I
    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    .line 397
    .restart local v19       #suggestions:[Ljava/lang/String;
    const/4 v5, 0x0

    move v11, v10

    .end local v10           #numberOfSuggestions:I
    .local v11, numberOfSuggestions:I
    :goto_3
    move/from16 v0, v20

    if-ge v5, v0, :cond_7

    .line 398
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionAt(I)Ljava/lang/String;

    move-result-object v14

    .line 399
    .local v14, spellSuggestion:Ljava/lang/String;
    if-nez v14, :cond_8

    .line 420
    .end local v14           #spellSuggestion:Ljava/lang/String;
    :cond_7
    move/from16 v0, v20

    if-eq v11, v0, :cond_5

    .line 421
    new-array v9, v11, [Ljava/lang/String;

    .line 422
    .local v9, newSuggestions:[Ljava/lang/String;
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v9, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 423
    move-object/from16 v19, v9

    goto :goto_2

    .line 400
    .end local v9           #newSuggestions:[Ljava/lang/String;
    .restart local v14       #spellSuggestion:Ljava/lang/String;
    :cond_8
    const/16 v16, 0x0

    .line 402
    .local v16, suggestionFound:Z
    const/4 v6, 0x0

    .local v6, j:I
    :goto_4
    if-ge v6, v8, :cond_9

    if-nez v16, :cond_9

    .line 403
    aget-object v22, v18, v6

    if-nez v22, :cond_a

    .line 415
    :cond_9
    if-nez v16, :cond_d

    .line 416
    add-int/lit8 v10, v11, 0x1

    .end local v11           #numberOfSuggestions:I
    .restart local v10       #numberOfSuggestions:I
    aput-object v14, v19, v11

    .line 397
    :goto_5
    add-int/lit8 v5, v5, 0x1

    move v11, v10

    .end local v10           #numberOfSuggestions:I
    .restart local v11       #numberOfSuggestions:I
    goto :goto_3

    .line 405
    :cond_a
    aget-object v22, v18, v6

    invoke-virtual/range {v22 .. v22}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v21

    .line 406
    .local v21, suggests:[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, k:I
    :goto_6
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v7, v0, :cond_b

    .line 407
    aget-object v22, v21, v7

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 409
    const/16 v16, 0x1

    .line 402
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 406
    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .end local v7           #k:I
    .end local v21           #suggests:[Ljava/lang/String;
    :cond_d
    move v10, v11

    .end local v11           #numberOfSuggestions:I
    .restart local v10       #numberOfSuggestions:I
    goto :goto_5
.end method

.method private isSessionActive()Z
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nextSpellCheckSpanIndex()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 164
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v4, p0, Landroid/widget/SpellChecker;->mLength:I

    if-ge v0, v4, :cond_1

    .line 165
    iget-object v4, p0, Landroid/widget/SpellChecker;->mIds:[I

    aget v4, v4, v0

    if-gez v4, :cond_0

    .line 180
    .end local v0           #i:I
    :goto_1
    return v0

    .line 164
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_1
    iget v4, p0, Landroid/widget/SpellChecker;->mLength:I

    iget-object v5, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    array-length v5, v5

    if-ne v4, v5, :cond_2

    .line 169
    iget v4, p0, Landroid/widget/SpellChecker;->mLength:I

    mul-int/lit8 v2, v4, 0x2

    .line 170
    .local v2, newSize:I
    new-array v1, v2, [I

    .line 171
    .local v1, newIds:[I
    new-array v3, v2, [Landroid/text/style/SpellCheckSpan;

    .line 172
    .local v3, newSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;
    iget-object v4, p0, Landroid/widget/SpellChecker;->mIds:[I

    iget v5, p0, Landroid/widget/SpellChecker;->mLength:I

    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    iget-object v4, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    iget v5, p0, Landroid/widget/SpellChecker;->mLength:I

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    iput-object v1, p0, Landroid/widget/SpellChecker;->mIds:[I

    .line 175
    iput-object v3, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    .line 178
    .end local v1           #newIds:[I
    .end local v2           #newSize:I
    .end local v3           #newSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;
    :cond_2
    iget-object v4, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    iget v5, p0, Landroid/widget/SpellChecker;->mLength:I

    new-instance v6, Landroid/text/style/SpellCheckSpan;

    invoke-direct {v6}, Landroid/text/style/SpellCheckSpan;-><init>()V

    aput-object v6, v4, v5

    .line 179
    iget v4, p0, Landroid/widget/SpellChecker;->mLength:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/widget/SpellChecker;->mLength:I

    .line 180
    iget v4, p0, Landroid/widget/SpellChecker;->mLength:I

    add-int/lit8 v0, v4, -0x1

    goto :goto_1
.end method

.method private resetSession()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 101
    invoke-virtual {p0}, Landroid/widget/SpellChecker;->closeSession()V

    .line 103
    iget-object v1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "textservices"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/textservice/TextServicesManager;

    iput-object v1, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    .line 105
    iget-object v1, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v1}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    iput-object v4, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    .line 115
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v1, p0, Landroid/widget/SpellChecker;->mLength:I

    if-ge v0, v1, :cond_1

    .line 116
    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/text/style/SpellCheckSpan;->setSpellCheckInProgress(Z)V

    .line 117
    iget-object v1, p0, Landroid/widget/SpellChecker;->mIds:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 108
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    iget-object v2, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v1, v4, v2, p0, v3}, Landroid/view/textservice/TextServicesManager;->newSpellCheckerSession(Landroid/os/Bundle;Ljava/util/Locale;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;Z)Landroid/view/textservice/SpellCheckerSession;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    goto :goto_0

    .line 119
    .restart local v0       #i:I
    :cond_1
    iput v3, p0, Landroid/widget/SpellChecker;->mLength:I

    .line 122
    iget-object v2, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Editable;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->removeMisspelledSpans(Landroid/text/Spannable;)V

    .line 125
    iget-object v1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->onLocaleChanged()V

    .line 126
    return-void
.end method

.method private scheduleNewSpellCheck()V
    .locals 4

    .prologue
    .line 348
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 349
    new-instance v0, Landroid/widget/SpellChecker$1;

    invoke-direct {v0, p0}, Landroid/widget/SpellChecker$1;-><init>(Landroid/widget/SpellChecker;)V

    iput-object v0, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    .line 366
    :goto_0
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 367
    return-void

    .line 363
    :cond_0
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private setLocale(Ljava/util/Locale;)V
    .locals 1
    .parameter "locale"

    .prologue
    .line 129
    iput-object p1, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    .line 131
    invoke-direct {p0}, Landroid/widget/SpellChecker;->resetSession()V

    .line 134
    new-instance v0, Landroid/text/method/WordIterator;

    invoke-direct {v0, p1}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;

    .line 137
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->onLocaleChanged()V

    .line 138
    return-void
.end method

.method private spellCheck()V
    .locals 15

    .prologue
    .line 246
    iget-object v12, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    if-nez v12, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    iget-object v12, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    .line 249
    .local v0, editable:Landroid/text/Editable;
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    .line 250
    .local v4, selectionStart:I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 252
    .local v3, selectionEnd:I
    iget v12, p0, Landroid/widget/SpellChecker;->mLength:I

    new-array v7, v12, [Landroid/view/textservice/TextInfo;

    .line 253
    .local v7, textInfos:[Landroid/view/textservice/TextInfo;
    const/4 v9, 0x0

    .line 255
    .local v9, textInfosCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget v12, p0, Landroid/widget/SpellChecker;->mLength:I

    if-ge v2, v12, :cond_6

    .line 256
    iget-object v12, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    aget-object v5, v12, v2

    .line 257
    .local v5, spellCheckSpan:Landroid/text/style/SpellCheckSpan;
    invoke-virtual {v5}, Landroid/text/style/SpellCheckSpan;->isSpellCheckInProgress()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 255
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 259
    :cond_3
    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 260
    .local v6, start:I
    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 263
    .local v1, end:I
    if-ltz v6, :cond_2

    if-le v1, v6, :cond_2

    if-lt v3, v6, :cond_4

    if-le v4, v1, :cond_2

    .line 264
    :cond_4
    instance-of v12, v0, Landroid/text/SpannableStringBuilder;

    if-eqz v12, :cond_5

    move-object v12, v0

    check-cast v12, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v12, v6, v1}, Landroid/text/SpannableStringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 267
    .local v11, word:Ljava/lang/String;
    :goto_3
    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Landroid/text/style/SpellCheckSpan;->setSpellCheckInProgress(Z)V

    .line 268
    add-int/lit8 v10, v9, 0x1

    .end local v9           #textInfosCount:I
    .local v10, textInfosCount:I
    new-instance v12, Landroid/view/textservice/TextInfo;

    iget v13, p0, Landroid/widget/SpellChecker;->mCookie:I

    iget-object v14, p0, Landroid/widget/SpellChecker;->mIds:[I

    aget v14, v14, v2

    invoke-direct {v12, v11, v13, v14}, Landroid/view/textservice/TextInfo;-><init>(Ljava/lang/String;II)V

    aput-object v12, v7, v9

    move v9, v10

    .end local v10           #textInfosCount:I
    .restart local v9       #textInfosCount:I
    goto :goto_2

    .line 264
    .end local v11           #word:Ljava/lang/String;
    :cond_5
    invoke-interface {v0, v6, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    .line 272
    .end local v1           #end:I
    .end local v5           #spellCheckSpan:Landroid/text/style/SpellCheckSpan;
    .end local v6           #start:I
    :cond_6
    if-lez v9, :cond_0

    .line 273
    array-length v12, v7

    if-ge v9, v12, :cond_7

    .line 274
    new-array v8, v9, [Landroid/view/textservice/TextInfo;

    .line 275
    .local v8, textInfosCopy:[Landroid/view/textservice/TextInfo;
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v7, v12, v8, v13, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    move-object v7, v8

    .line 279
    .end local v8           #textInfosCopy:[Landroid/view/textservice/TextInfo;
    :cond_7
    iget-object v12, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    const/4 v13, 0x5

    const/4 v14, 0x0

    invoke-virtual {v12, v7, v13, v14}, Landroid/view/textservice/SpellCheckerSession;->getSuggestions([Landroid/view/textservice/TextInfo;IZ)V

    goto :goto_0
.end method


# virtual methods
.method public closeSession()V
    .locals 4

    .prologue
    .line 149
    iget-object v2, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    if-eqz v2, :cond_0

    .line 150
    iget-object v2, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerSession;->close()V

    .line 153
    :cond_0
    iget-object v2, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    array-length v1, v2

    .line 154
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 155
    iget-object v2, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/widget/SpellChecker$SpellParser;->finish()V

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_1
    iget-object v2, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    .line 159
    iget-object v2, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 161
    :cond_2
    return-void
.end method

.method public onGetSuggestions([Landroid/view/textservice/SuggestionsInfo;)V
    .locals 13
    .parameter "results"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 306
    iget-object v11, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Editable;

    .line 308
    .local v1, editable:Landroid/text/Editable;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v11, p1

    if-ge v2, v11, :cond_8

    .line 309
    aget-object v8, p1, v2

    .line 310
    .local v8, suggestionsInfo:Landroid/view/textservice/SuggestionsInfo;
    invoke-virtual {v8}, Landroid/view/textservice/SuggestionsInfo;->getCookie()I

    move-result v11

    iget v12, p0, Landroid/widget/SpellChecker;->mCookie:I

    if-eq v11, v12, :cond_1

    .line 308
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 311
    :cond_1
    invoke-virtual {v8}, Landroid/view/textservice/SuggestionsInfo;->getSequence()I

    move-result v6

    .line 314
    .local v6, sequenceNumber:I
    const v11, 0x1c5ea

    if-ne v11, v6, :cond_3

    .line 315
    invoke-virtual {v8}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionsAttributes()I

    move-result v0

    .line 316
    .local v0, attributes:I
    and-int/lit8 v11, v0, 0x1

    if-lez v11, :cond_2

    move v3, v9

    .line 317
    .local v3, isInDictionary:Z
    :goto_2
    if-eqz v3, :cond_0

    .line 318
    iget-object v11, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    iget-object v12, p0, Landroid/widget/SpellChecker;->mSpellCheckWord:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->SCATDWordAdded(Ljava/lang/String;)V

    goto :goto_1

    .end local v3           #isInDictionary:Z
    :cond_2
    move v3, v10

    .line 316
    goto :goto_2

    .line 322
    .end local v0           #attributes:I
    :cond_3
    const/4 v4, 0x0

    .local v4, j:I
    :goto_3
    iget v11, p0, Landroid/widget/SpellChecker;->mLength:I

    if-ge v4, v11, :cond_0

    .line 323
    iget-object v11, p0, Landroid/widget/SpellChecker;->mIds:[I

    aget v11, v11, v4

    if-ne v6, v11, :cond_7

    .line 324
    invoke-virtual {v8}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionsAttributes()I

    move-result v0

    .line 325
    .restart local v0       #attributes:I
    and-int/lit8 v11, v0, 0x1

    if-lez v11, :cond_5

    move v3, v9

    .line 327
    .restart local v3       #isInDictionary:Z
    :goto_4
    and-int/lit8 v11, v0, 0x2

    if-lez v11, :cond_6

    move v5, v9

    .line 330
    .local v5, looksLikeTypo:Z
    :goto_5
    iget-object v11, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    aget-object v7, v11, v4

    .line 332
    .local v7, spellCheckSpan:Landroid/text/style/SpellCheckSpan;
    if-nez v3, :cond_4

    if-eqz v5, :cond_4

    .line 333
    invoke-direct {p0, v1, v8, v7}, Landroid/widget/SpellChecker;->createMisspelledSuggestionSpan(Landroid/text/Editable;Landroid/view/textservice/SuggestionsInfo;Landroid/text/style/SpellCheckSpan;)V

    .line 336
    :cond_4
    invoke-interface {v1, v7}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_1

    .end local v3           #isInDictionary:Z
    .end local v5           #looksLikeTypo:Z
    .end local v7           #spellCheckSpan:Landroid/text/style/SpellCheckSpan;
    :cond_5
    move v3, v10

    .line 325
    goto :goto_4

    .restart local v3       #isInDictionary:Z
    :cond_6
    move v5, v10

    .line 327
    goto :goto_5

    .line 322
    .end local v0           #attributes:I
    .end local v3           #isInDictionary:Z
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 344
    .end local v4           #j:I
    .end local v6           #sequenceNumber:I
    .end local v8           #suggestionsInfo:Landroid/view/textservice/SuggestionsInfo;
    :cond_8
    invoke-direct {p0}, Landroid/widget/SpellChecker;->scheduleNewSpellCheck()V

    .line 345
    return-void
.end method

.method public onSelectionChanged()V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0}, Landroid/widget/SpellChecker;->spellCheck()V

    .line 201
    return-void
.end method

.method public removeSpellCheckSpan(Landroid/text/style/SpellCheckSpan;)V
    .locals 3
    .parameter "spellCheckSpan"

    .prologue
    .line 190
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Landroid/widget/SpellChecker;->mLength:I

    if-ge v0, v1, :cond_0

    .line 191
    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 192
    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/style/SpellCheckSpan;->setSpellCheckInProgress(Z)V

    .line 193
    iget-object v1, p0, Landroid/widget/SpellChecker;->mIds:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 197
    :cond_0
    return-void

    .line 190
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public spellCheck(II)V
    .locals 9
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v8, 0x0

    .line 204
    iget-object v7, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v3

    .line 205
    .local v3, locale:Ljava/util/Locale;
    iget-object v7, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v7, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 206
    :cond_0
    invoke-direct {p0, v3}, Landroid/widget/SpellChecker;->setLocale(Ljava/util/Locale;)V

    .line 208
    const/4 p1, 0x0

    .line 209
    iget-object v7, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result p2

    .line 218
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/widget/SpellChecker;->isSessionActive()Z

    move-result v7

    if-nez v7, :cond_3

    .line 243
    :goto_1
    return-void

    .line 211
    :cond_2
    iget-object v7, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v7}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v5

    .line 212
    .local v5, spellCheckerActivated:Z
    invoke-direct {p0}, Landroid/widget/SpellChecker;->isSessionActive()Z

    move-result v7

    if-eq v7, v5, :cond_1

    .line 214
    invoke-direct {p0}, Landroid/widget/SpellChecker;->resetSession()V

    goto :goto_0

    .line 220
    .end local v5           #spellCheckerActivated:Z
    :cond_3
    iget-object v7, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    array-length v2, v7

    .line 221
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v2, :cond_5

    .line 222
    iget-object v7, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    aget-object v6, v7, v1

    .line 223
    .local v6, spellParser:Landroid/widget/SpellChecker$SpellParser;
    invoke-virtual {v6}, Landroid/widget/SpellChecker$SpellParser;->isFinished()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 225
    :try_start_0
    invoke-virtual {v6, p1, p2}, Landroid/widget/SpellChecker$SpellParser;->init(II)V

    .line 226
    invoke-virtual {v6}, Landroid/widget/SpellChecker$SpellParser;->parse()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 221
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 235
    .end local v6           #spellParser:Landroid/widget/SpellChecker$SpellParser;
    :cond_5
    add-int/lit8 v7, v2, 0x1

    new-array v4, v7, [Landroid/widget/SpellChecker$SpellParser;

    .line 236
    .local v4, newSpellParsers:[Landroid/widget/SpellChecker$SpellParser;
    iget-object v7, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    invoke-static {v7, v8, v4, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    iput-object v4, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    .line 239
    new-instance v6, Landroid/widget/SpellChecker$SpellParser;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Landroid/widget/SpellChecker$SpellParser;-><init>(Landroid/widget/SpellChecker;Landroid/widget/SpellChecker$1;)V

    .line 240
    .restart local v6       #spellParser:Landroid/widget/SpellChecker$SpellParser;
    iget-object v7, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    aput-object v6, v7, v2

    .line 241
    invoke-virtual {v6, p1, p2}, Landroid/widget/SpellChecker$SpellParser;->init(II)V

    .line 242
    invoke-virtual {v6}, Landroid/widget/SpellChecker$SpellParser;->parse()V

    goto :goto_1
.end method

.method public spellCheck(Ljava/lang/String;)V
    .locals 5
    .parameter "word"

    .prologue
    const/4 v4, 0x0

    .line 294
    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    if-nez v1, :cond_0

    .line 301
    :goto_0
    return-void

    .line 297
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/view/textservice/TextInfo;

    .line 298
    .local v0, textInfos:[Landroid/view/textservice/TextInfo;
    new-instance v1, Landroid/view/textservice/TextInfo;

    iget v2, p0, Landroid/widget/SpellChecker;->mCookie:I

    const v3, 0x1c5ea

    invoke-direct {v1, p1, v2, v3}, Landroid/view/textservice/TextInfo;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v4

    .line 299
    iput-object p1, p0, Landroid/widget/SpellChecker;->mSpellCheckWord:Ljava/lang/String;

    .line 300
    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2, v4}, Landroid/view/textservice/SpellCheckerSession;->getSuggestions([Landroid/view/textservice/TextInfo;IZ)V

    goto :goto_0
.end method
