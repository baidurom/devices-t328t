.class Landroid/text/MeasuredText;
.super Ljava/lang/Object;
.source "MeasuredText.java"


# static fields
.field private static final bArabicDisplay:Z

.field private static final localLOGV:Z

.field private static sCached:[Landroid/text/MeasuredText;

.field private static final sLock:[Ljava/lang/Object;


# instance fields
.field mChars:[C

.field mDir:I

.field mEasy:Z

.field mLen:I

.field mLevels:[B

.field private mPos:I

.field mText:Ljava/lang/CharSequence;

.field mTextStart:I

.field mWidths:[F

.field private mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 32
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v2, 0x19

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/text/MeasuredText;->bArabicDisplay:Z

    .line 50
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Landroid/text/MeasuredText;->sLock:[Ljava/lang/Object;

    .line 51
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/text/MeasuredText;

    sput-object v0, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    return-void

    :cond_0
    move v0, v1

    .line 32
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredText;->mWorkPaint:Landroid/text/TextPaint;

    .line 48
    return-void
.end method

.method static obtain()Landroid/text/MeasuredText;
    .locals 5

    .prologue
    .line 55
    sget-object v3, Landroid/text/MeasuredText;->sLock:[Ljava/lang/Object;

    monitor-enter v3

    .line 56
    :try_start_0
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    array-length v0, v2

    .local v0, i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 57
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 58
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aget-object v1, v2, v0

    .line 59
    .local v1, mt:Landroid/text/MeasuredText;
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    const/4 v4, 0x0

    aput-object v4, v2, v0

    .line 60
    monitor-exit v3

    .line 68
    :goto_0
    return-object v1

    .line 63
    .end local v1           #mt:Landroid/text/MeasuredText;
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    new-instance v1, Landroid/text/MeasuredText;

    invoke-direct {v1}, Landroid/text/MeasuredText;-><init>()V

    .line 68
    .restart local v1       #mt:Landroid/text/MeasuredText;
    goto :goto_0

    .line 63
    .end local v1           #mt:Landroid/text/MeasuredText;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method static recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;
    .locals 4
    .parameter "mt"

    .prologue
    const/4 v3, 0x0

    .line 72
    iput-object v3, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    .line 73
    iget v1, p0, Landroid/text/MeasuredText;->mLen:I

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_1

    .line 74
    sget-object v2, Landroid/text/MeasuredText;->sLock:[Ljava/lang/Object;

    monitor-enter v2

    .line 75
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    sget-object v1, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 76
    sget-object v1, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    .line 77
    sget-object v1, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aput-object p0, v1, v0

    .line 78
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    .line 82
    :cond_0
    monitor-exit v2

    .line 84
    .end local v0           #i:I
    :cond_1
    return-object v3

    .line 75
    .restart local v0       #i:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F
    .locals 22
    .parameter "paint"
    .parameter "len"
    .parameter "fm"

    .prologue
    .line 161
    if-eqz p3, :cond_0

    .line 162
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 165
    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/MeasuredText;->mPos:I

    .line 166
    .local v4, p:I
    add-int v2, v4, p2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/MeasuredText;->mPos:I

    .line 168
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/text/MeasuredText;->mEasy:Z

    if-eqz v2, :cond_3

    .line 169
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/MeasuredText;->mDir:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v8, 0x0

    .line 171
    .local v8, flags:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v2, p1

    move/from16 v5, p2

    move v6, v4

    move/from16 v7, p2

    move v10, v4

    invoke-virtual/range {v2 .. v10}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIII[FI)F

    move-result v21

    .line 188
    :cond_1
    return v21

    .line 169
    .end local v8           #flags:I
    :cond_2
    const/4 v8, 0x1

    goto :goto_0

    .line 174
    :cond_3
    const/16 v21, 0x0

    .line 175
    .local v21, totalAdvance:F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v20, v2, v4

    .line 176
    .local v20, level:I
    move v11, v4

    .local v11, q:I
    add-int/lit8 v19, v4, 0x1

    .local v19, i:I
    add-int v18, v4, p2

    .line 177
    .local v18, e:I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v2, v2, v19

    move/from16 v0, v20

    if-eq v2, v0, :cond_5

    .line 178
    :cond_4
    and-int/lit8 v2, v20, 0x1

    if-nez v2, :cond_6

    const/4 v8, 0x0

    .line 179
    .restart local v8       #flags:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/text/MeasuredText;->mChars:[C

    sub-int v12, v19, v11

    sub-int v14, v19, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v16, v0

    move-object/from16 v9, p1

    move v13, v11

    move v15, v8

    move/from16 v17, v11

    invoke-virtual/range {v9 .. v17}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIII[FI)F

    move-result v2

    add-float v21, v21, v2

    .line 181
    move/from16 v0, v19

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 184
    move/from16 v11, v19

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v20, v2, v19

    .line 176
    .end local v8           #flags:I
    :cond_5
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 178
    :cond_6
    const/4 v8, 0x1

    goto :goto_2
.end method

.method addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F
    .locals 11
    .parameter "paint"
    .parameter "spans"
    .parameter "len"
    .parameter "fm"

    .prologue
    .line 194
    iget-object v1, p0, Landroid/text/MeasuredText;->mWorkPaint:Landroid/text/TextPaint;

    .line 195
    .local v1, workPaint:Landroid/text/TextPaint;
    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 197
    const/4 v2, 0x0

    iput v2, v1, Landroid/text/TextPaint;->baselineShift:I

    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, replacement:Landroid/text/style/ReplacementSpan;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v2, p2

    if-ge v7, v2, :cond_1

    .line 201
    aget-object v8, p2, v7

    .line 202
    .local v8, span:Landroid/text/style/MetricAffectingSpan;
    instance-of v2, v8, Landroid/text/style/ReplacementSpan;

    if-eqz v2, :cond_0

    move-object v0, v8

    .line 203
    check-cast v0, Landroid/text/style/ReplacementSpan;

    .line 200
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 205
    :cond_0
    invoke-virtual {v8, v1}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    goto :goto_1

    .line 210
    .end local v8           #span:Landroid/text/style/MetricAffectingSpan;
    :cond_1
    if-nez v0, :cond_3

    .line 211
    invoke-virtual {p0, v1, p3, p4}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v10

    .line 223
    .local v10, wid:F
    :goto_2
    if-eqz p4, :cond_2

    .line 224
    iget v2, v1, Landroid/text/TextPaint;->baselineShift:I

    if-gez v2, :cond_5

    .line 225
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 226
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 233
    :cond_2
    :goto_3
    return v10

    .line 214
    .end local v10           #wid:F
    :cond_3
    iget-object v2, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/text/MeasuredText;->mTextStart:I

    iget v4, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/2addr v3, v4

    iget v4, p0, Landroid/text/MeasuredText;->mTextStart:I

    iget v5, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/2addr v4, v5

    add-int/2addr v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v2

    int-to-float v10, v2

    .line 216
    .restart local v10       #wid:F
    iget-object v9, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 217
    .local v9, w:[F
    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    aput v10, v9, v2

    .line 218
    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/lit8 v7, v2, 0x1

    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    add-int v6, v2, p3

    .local v6, e:I
    :goto_4
    if-ge v7, v6, :cond_4

    .line 219
    const/4 v2, 0x0

    aput v2, v9, v7

    .line 218
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 220
    :cond_4
    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/2addr v2, p3

    iput v2, p0, Landroid/text/MeasuredText;->mPos:I

    goto :goto_2

    .line 228
    .end local v6           #e:I
    .end local v9           #w:[F
    :cond_5
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 229
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_3
.end method

.method addStyleRunEx(Landroid/text/TextPaint;IILandroid/graphics/Paint$FontMetricsInt;)F
    .locals 22
    .parameter "paint"
    .parameter "span_start"
    .parameter "len"
    .parameter "fm"

    .prologue
    .line 273
    if-eqz p4, :cond_0

    .line 274
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 277
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/MeasuredText;->mTextStart:I

    sub-int v4, p2, v2

    .line 278
    .local v4, p:I
    add-int v2, v4, p3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/MeasuredText;->mPos:I

    .line 280
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/text/MeasuredText;->mEasy:Z

    if-eqz v2, :cond_3

    .line 281
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/MeasuredText;->mDir:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v8, 0x0

    .line 282
    .local v8, flags:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v2, p1

    move/from16 v5, p3

    move v6, v4

    move/from16 v7, p3

    move v10, v4

    invoke-virtual/range {v2 .. v10}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIII[FI)F

    move-result v21

    .line 298
    :cond_1
    return v21

    .line 281
    .end local v8           #flags:I
    :cond_2
    const/4 v8, 0x1

    goto :goto_0

    .line 285
    :cond_3
    const/16 v21, 0x0

    .line 286
    .local v21, totalAdvance:F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v20, v2, v4

    .line 287
    .local v20, level:I
    move v11, v4

    .local v11, q:I
    add-int/lit8 v19, v4, 0x1

    .local v19, i:I
    add-int v18, v4, p3

    .line 288
    .local v18, e:I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v2, v2, v19

    move/from16 v0, v20

    if-eq v2, v0, :cond_5

    .line 289
    :cond_4
    and-int/lit8 v2, v20, 0x1

    if-nez v2, :cond_6

    const/4 v8, 0x0

    .line 290
    .restart local v8       #flags:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/text/MeasuredText;->mChars:[C

    sub-int v12, v19, v11

    sub-int v14, v19, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v16, v0

    move-object/from16 v9, p1

    move v13, v11

    move v15, v8

    move/from16 v17, v11

    invoke-virtual/range {v9 .. v17}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIII[FI)F

    move-result v2

    add-float v21, v21, v2

    .line 291
    move/from16 v0, v19

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 294
    move/from16 v11, v19

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v20, v2, v19

    .line 287
    .end local v8           #flags:I
    :cond_5
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 289
    :cond_6
    const/4 v8, 0x1

    goto :goto_2
.end method

.method addStyleRunEx(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;IILandroid/graphics/Paint$FontMetricsInt;)F
    .locals 15
    .parameter "paint"
    .parameter "spans"
    .parameter "span_start"
    .parameter "len"
    .parameter "fm"

    .prologue
    .line 302
    iget-object v4, p0, Landroid/text/MeasuredText;->mWorkPaint:Landroid/text/TextPaint;

    .line 303
    .local v4, workPaint:Landroid/text/TextPaint;
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 305
    const/4 v5, 0x0

    iput v5, v4, Landroid/text/TextPaint;->baselineShift:I

    .line 307
    const/4 v3, 0x0

    .line 309
    .local v3, replacement:Landroid/text/style/ReplacementSpan;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    move-object/from16 v0, p2

    array-length v5, v0

    if-ge v10, v5, :cond_1

    .line 310
    aget-object v11, p2, v10

    .line 311
    .local v11, span:Landroid/text/style/MetricAffectingSpan;
    instance-of v5, v11, Landroid/text/style/ReplacementSpan;

    if-eqz v5, :cond_0

    move-object v3, v11

    .line 312
    check-cast v3, Landroid/text/style/ReplacementSpan;

    .line 309
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 314
    :cond_0
    invoke-virtual {v11, v4}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    goto :goto_1

    .line 319
    .end local v11           #span:Landroid/text/style/MetricAffectingSpan;
    :cond_1
    if-nez v3, :cond_3

    .line 320
    move/from16 v0, p3

    move/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {p0, v4, v0, v1, v2}, Landroid/text/MeasuredText;->addStyleRunEx(Landroid/text/TextPaint;IILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v14

    .line 337
    .local v14, wid:F
    :goto_2
    if-eqz p5, :cond_2

    .line 338
    iget v5, v4, Landroid/text/TextPaint;->baselineShift:I

    if-gez v5, :cond_5

    .line 339
    move-object/from16 v0, p5

    iget v5, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v6, v4, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v5, v6

    move-object/from16 v0, p5

    iput v5, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 340
    move-object/from16 v0, p5

    iget v5, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v6, v4, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v5, v6

    move-object/from16 v0, p5

    iput v5, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 347
    :cond_2
    :goto_3
    return v14

    .line 324
    .end local v14           #wid:F
    :cond_3
    iget-object v5, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    add-int v7, p3, p4

    move/from16 v6, p3

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v5

    int-to-float v14, v5

    .line 326
    .restart local v14       #wid:F
    iget-object v13, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 328
    .local v13, w:[F
    iget v5, p0, Landroid/text/MeasuredText;->mTextStart:I

    sub-int v12, p3, v5

    .line 330
    .local v12, start_offset:I
    aput v14, v13, v12

    .line 331
    add-int/lit8 v10, v12, 0x1

    add-int v9, v12, p4

    .local v9, e:I
    :goto_4
    if-ge v10, v9, :cond_4

    .line 332
    const/4 v5, 0x0

    aput v5, v13, v10

    .line 331
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 334
    :cond_4
    add-int v5, v12, p4

    iput v5, p0, Landroid/text/MeasuredText;->mPos:I

    goto :goto_2

    .line 342
    .end local v9           #e:I
    .end local v12           #start_offset:I
    .end local v13           #w:[F
    :cond_5
    move-object/from16 v0, p5

    iget v5, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v6, v4, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v5, v6

    move-object/from16 v0, p5

    iput v5, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 343
    move-object/from16 v0, p5

    iget v5, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v6, v4, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v5, v6

    move-object/from16 v0, p5

    iput v5, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_3
.end method

.method breakText(IIZF)I
    .locals 4
    .parameter "start"
    .parameter "limit"
    .parameter "forwards"
    .parameter "width"

    .prologue
    const/4 v3, 0x0

    .line 237
    iget-object v1, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 238
    .local v1, w:[F
    if-eqz p3, :cond_1

    .line 239
    move v0, p1

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_3

    .line 240
    aget v2, v1, v0

    sub-float/2addr p4, v2

    cmpg-float v2, p4, v3

    if-gez v2, :cond_0

    .line 241
    sub-int v2, v0, p1

    .line 252
    :goto_1
    return v2

    .line 239
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    .end local v0           #i:I
    :cond_1
    move v0, p2

    .restart local v0       #i:I
    :cond_2
    add-int/lit8 v0, v0, -0x1

    if-lt v0, p1, :cond_3

    .line 246
    aget v2, v1, v0

    sub-float/2addr p4, v2

    cmpg-float v2, p4, v3

    if-gez v2, :cond_2

    .line 247
    sub-int v2, p2, v0

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 252
    :cond_3
    sub-int v2, p2, p1

    goto :goto_1
.end method

.method measure(II)F
    .locals 4
    .parameter "start"
    .parameter "limit"

    .prologue
    .line 256
    const/4 v2, 0x0

    .line 257
    .local v2, width:F
    iget-object v1, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 258
    .local v1, w:[F
    move v0, p1

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 259
    aget v3, v1, v0

    add-float/2addr v2, v3

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 261
    :cond_0
    return v2
.end method

.method setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V
    .locals 16
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "textDir"

    .prologue
    .line 91
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    .line 92
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/MeasuredText;->mTextStart:I

    .line 94
    sub-int v9, p3, p2

    .line 95
    .local v9, len:I
    move-object/from16 v0, p0

    iput v9, v0, Landroid/text/MeasuredText;->mLen:I

    .line 96
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Landroid/text/MeasuredText;->mPos:I

    .line 98
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/text/MeasuredText;->mWidths:[F

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/text/MeasuredText;->mWidths:[F

    array-length v13, v13

    if-ge v13, v9, :cond_1

    .line 99
    :cond_0
    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->idealFloatArraySize(I)I

    move-result v13

    new-array v13, v13, [F

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/text/MeasuredText;->mWidths:[F

    .line 101
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/text/MeasuredText;->mChars:[C

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/text/MeasuredText;->mChars:[C

    array-length v13, v13

    if-ge v13, v9, :cond_3

    .line 102
    :cond_2
    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->idealCharArraySize(I)I

    move-result v13

    new-array v13, v13, [C

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/text/MeasuredText;->mChars:[C

    .line 104
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/text/MeasuredText;->mChars:[C

    const/4 v14, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v1, v2, v13, v14}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 106
    move-object/from16 v0, p1

    instance-of v13, v0, Landroid/text/Spanned;

    if-eqz v13, :cond_5

    move-object/from16 v10, p1

    .line 107
    check-cast v10, Landroid/text/Spanned;

    .line 108
    .local v10, spanned:Landroid/text/Spanned;
    const-class v13, Landroid/text/style/ReplacementSpan;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v10, v0, v1, v13}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/text/style/ReplacementSpan;

    .line 111
    .local v11, spans:[Landroid/text/style/ReplacementSpan;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    array-length v13, v11

    if-ge v6, v13, :cond_5

    .line 112
    aget-object v13, v11, v6

    invoke-interface {v10, v13}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    sub-int v12, v13, p2

    .line 113
    .local v12, startInPara:I
    aget-object v13, v11, v6

    invoke-interface {v10, v13}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v13

    sub-int v5, v13, p2

    .line 114
    .local v5, endInPara:I
    move v8, v12

    .local v8, j:I
    :goto_1
    if-ge v8, v5, :cond_4

    .line 115
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/text/MeasuredText;->mChars:[C

    const v14, 0xfffc

    aput-char v14, v13, v8

    .line 114
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 111
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 120
    .end local v5           #endInPara:I
    .end local v6           #i:I
    .end local v8           #j:I
    .end local v10           #spanned:Landroid/text/Spanned;
    .end local v11           #spans:[Landroid/text/style/ReplacementSpan;
    .end local v12           #startInPara:I
    :cond_5
    sget-object v13, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-eq v0, v13, :cond_6

    sget-object v13, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-eq v0, v13, :cond_6

    sget-object v13, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v13, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/text/MeasuredText;->mChars:[C

    const/4 v14, 0x0

    invoke-static {v13, v14, v9}, Landroid/text/TextUtils;->doesNotNeedBidi([CII)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 124
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/text/MeasuredText;->mDir:I

    .line 125
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/text/MeasuredText;->mEasy:Z

    .line 158
    :goto_2
    return-void

    .line 127
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/text/MeasuredText;->mLevels:[B

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/text/MeasuredText;->mLevels:[B

    array-length v13, v13

    if-ge v13, v9, :cond_9

    .line 128
    :cond_8
    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->idealByteArraySize(I)I

    move-result v13

    new-array v13, v13, [B

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/text/MeasuredText;->mLevels:[B

    .line 131
    :cond_9
    sget-object v13, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v13, :cond_b

    .line 132
    const/4 v3, 0x1

    .line 144
    .local v3, bidiRequest:I
    :goto_3
    sget-boolean v13, Landroid/text/MeasuredText;->bArabicDisplay:Z

    if-nez v13, :cond_10

    .line 146
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/MeasuredText;->mLevels:[B

    const/4 v15, 0x0

    invoke-static {v3, v13, v14, v9, v15}, Landroid/text/AndroidBidi;->bidi(I[C[BIZ)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/text/MeasuredText;->mDir:I

    .line 156
    :cond_a
    :goto_4
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/text/MeasuredText;->mEasy:Z

    goto :goto_2

    .line 133
    .end local v3           #bidiRequest:I
    :cond_b
    sget-object v13, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v13, :cond_c

    .line 134
    const/4 v3, -0x1

    .restart local v3       #bidiRequest:I
    goto :goto_3

    .line 135
    .end local v3           #bidiRequest:I
    :cond_c
    sget-object v13, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v13, :cond_d

    .line 136
    const/4 v3, 0x2

    .restart local v3       #bidiRequest:I
    goto :goto_3

    .line 137
    .end local v3           #bidiRequest:I
    :cond_d
    sget-object v13, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v13, :cond_e

    .line 138
    const/4 v3, -0x2

    .restart local v3       #bidiRequest:I
    goto :goto_3

    .line 140
    .end local v3           #bidiRequest:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/text/MeasuredText;->mChars:[C

    const/4 v14, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v13, v14, v9}, Landroid/text/TextDirectionHeuristic;->isRtl([CII)Z

    move-result v7

    .line 141
    .local v7, isRtl:Z
    if-eqz v7, :cond_f

    const/4 v3, -0x1

    .restart local v3       #bidiRequest:I
    :goto_5
    goto :goto_3

    .end local v3           #bidiRequest:I
    :cond_f
    const/4 v3, 0x1

    goto :goto_5

    .line 150
    .end local v7           #isRtl:Z
    .restart local v3       #bidiRequest:I
    :cond_10
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/MeasuredText;->mDir:I

    .line 151
    .local v4, currentDir:I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/MeasuredText;->mLevels:[B

    const/4 v15, 0x0

    invoke-static {v3, v13, v14, v9, v15}, Landroid/text/AndroidBidi;->bidi(I[C[BIZ)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/text/MeasuredText;->mDir:I

    .line 152
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/text/MeasuredText;->mChars:[C

    const/4 v14, 0x0

    aget-char v13, v13, v14

    const/16 v14, 0x2022

    if-ne v13, v14, :cond_a

    .line 153
    move-object/from16 v0, p0

    iput v4, v0, Landroid/text/MeasuredText;->mDir:I

    goto :goto_4
.end method
