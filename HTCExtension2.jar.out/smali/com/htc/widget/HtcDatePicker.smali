.class public Lcom/htc/widget/HtcDatePicker;
.super Landroid/widget/RelativeLayout;
.source "HtcDatePicker.java"

# interfaces
.implements Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcDatePicker$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_END_YEAR:I = 0x7ee

.field private static final DEFAULT_START_YEAR:I = 0x7c7

.field private static final LOG:Z = false

.field public static final PICKER_TYPE_DAY:I = 0x2

.field public static final PICKER_TYPE_MONTH:I = 0x1

.field public static final PICKER_TYPE_YEAR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HtcDatePicker"


# instance fields
.field isOnCreate:Z

.field private mAttrs:Landroid/util/AttributeSet;

.field private mContext:Landroid/content/Context;

.field private mDay:I

.field private final mDayCoat:Landroid/view/View;

.field private final mDayPicker:Lcom/htc/widget/HtcNumberPicker;

.field private final mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

.field private final mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

.field private final mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

.field private mEndYear:I

.field private mIdleScrollListener:Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;

.field private final mLabelDay:Landroid/widget/TextView;

.field private final mLabelMonth:Landroid/widget/TextView;

.field private final mLabelYear:Landroid/widget/TextView;

.field private mLparams:[Landroid/view/ViewGroup$MarginLayoutParams;

.field private mMonth:I

.field private final mMonthCoat:Landroid/view/View;

.field private final mMonthPicker:Lcom/htc/widget/HtcNumberPicker;

.field private mOldMax:I

.field private mOnDateChangedListener:Lcom/htc/widget/HtcDatePicker$OnDateChangedListener;

.field private mOrder:Ljava/lang/String;

.field mRangeDayMax:I

.field mRangeDayMin:I

.field mRangeDayReset:Z

.field private mStartYear:I

.field private mYear:I

.field private final mYearCoat:Landroid/view/View;

.field private final mYearPicker:Lcom/htc/widget/HtcNumberPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v7, -0x1

    const/4 v9, 0x4

    const/4 v8, 0x1

    .line 96
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    iput v10, p0, Lcom/htc/widget/HtcDatePicker;->mOldMax:I

    .line 61
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mIdleScrollListener:Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;

    .line 70
    const/4 v6, 0x3

    new-array v6, v6, [Landroid/view/ViewGroup$MarginLayoutParams;

    iput-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mLparams:[Landroid/view/ViewGroup$MarginLayoutParams;

    .line 185
    iput-boolean v8, p0, Lcom/htc/widget/HtcDatePicker;->isOnCreate:Z

    .line 486
    iput v7, p0, Lcom/htc/widget/HtcDatePicker;->mRangeDayMin:I

    .line 487
    iput v7, p0, Lcom/htc/widget/HtcDatePicker;->mRangeDayMax:I

    .line 488
    iput-boolean v10, p0, Lcom/htc/widget/HtcDatePicker;->mRangeDayReset:Z

    .line 97
    iput-object p1, p0, Lcom/htc/widget/HtcDatePicker;->mContext:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/htc/widget/HtcDatePicker;->mAttrs:Landroid/util/AttributeSet;

    .line 99
    const-string v6, "layout_inflater"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 100
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v6, 0x2090090

    invoke-virtual {v2, v6, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 102
    const v6, 0x202017f

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcNumberPicker;

    iput-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mMonthPicker:Lcom/htc/widget/HtcNumberPicker;

    .line 103
    const v6, 0x2020182

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcNumberPicker;

    iput-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker:Lcom/htc/widget/HtcNumberPicker;

    .line 104
    iget-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker:Lcom/htc/widget/HtcNumberPicker;

    const/16 v7, 0x1e

    invoke-virtual {v6, v8, v7}, Lcom/htc/widget/HtcNumberPicker;->setRange(II)V

    .line 105
    const/16 v6, 0x1e

    iput v6, p0, Lcom/htc/widget/HtcDatePicker;->mOldMax:I

    .line 106
    const v6, 0x2020183

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcNumberPicker;

    iput-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

    .line 107
    iget-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

    const/16 v7, 0x1f

    invoke-virtual {v6, v8, v7}, Lcom/htc/widget/HtcNumberPicker;->setRange(II)V

    .line 108
    iget-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v6, v9}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 109
    const v6, 0x2020184

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcNumberPicker;

    iput-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    .line 110
    iget-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    const/16 v7, 0x1d

    invoke-virtual {v6, v8, v7}, Lcom/htc/widget/HtcNumberPicker;->setRange(II)V

    .line 111
    iget-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v6, v9}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 112
    const v6, 0x2020185

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcNumberPicker;

    iput-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    .line 113
    iget-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    const/16 v7, 0x1c

    invoke-virtual {v6, v8, v7}, Lcom/htc/widget/HtcNumberPicker;->setRange(II)V

    .line 114
    iget-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v6, v9}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 115
    const v6, 0x2020188

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcNumberPicker;

    iput-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mYearPicker:Lcom/htc/widget/HtcNumberPicker;

    .line 116
    const v6, 0x202017d

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mMonthCoat:Landroid/view/View;

    .line 117
    const v6, 0x2020180

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mDayCoat:Landroid/view/View;

    .line 118
    const v6, 0x2020186

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mYearCoat:Landroid/view/View;

    .line 119
    const v6, 0x2020181

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mLabelDay:Landroid/widget/TextView;

    .line 120
    const v6, 0x202017e

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mLabelMonth:Landroid/widget/TextView;

    .line 121
    const v6, 0x2020187

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mLabelYear:Landroid/widget/TextView;

    .line 125
    const/16 v6, 0xc

    invoke-virtual {p0, v8, v6}, Lcom/htc/widget/HtcDatePicker;->setMonthRange(II)V

    .line 126
    iget-object v6, p0, Lcom/htc/widget/HtcDatePicker;->mYearPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v6, v11}, Lcom/htc/widget/HtcNumberPicker;->setShowNumberDigits(I)V

    .line 128
    sget-object v6, Landroid/R$styleable;->DatePicker:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 130
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v6, 0x7c7

    invoke-virtual {v0, v8, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 131
    .local v4, mStartYear:I
    const/16 v6, 0x7ee

    invoke-virtual {v0, v11, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 132
    .local v3, mEndYear:I
    invoke-virtual {p0, v4, v3}, Lcom/htc/widget/HtcDatePicker;->setYearRange(II)V

    .line 134
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 139
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 140
    .local v1, dfs:Ljava/text/DateFormatSymbols;
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v5

    .line 142
    .local v5, months:[Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/htc/widget/HtcDatePicker;->reorderPickers([Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0, p0}, Lcom/htc/widget/HtcDatePicker;->dispatchOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V

    .line 145
    return-void
.end method

.method private correctDayPicker()V
    .locals 9

    .prologue
    const/16 v8, 0x1e

    const/16 v7, 0x1d

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 321
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 322
    .local v0, cal:Ljava/util/Calendar;
    iget v2, p0, Lcom/htc/widget/HtcDatePicker;->mYear:I

    iget v3, p0, Lcom/htc/widget/HtcDatePicker;->mMonth:I

    invoke-virtual {v0, v2, v3, v6}, Ljava/util/Calendar;->set(III)V

    .line 323
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    .line 330
    .local v1, max:I
    iget v2, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    if-le v2, v1, :cond_3

    .line 331
    iput v1, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    .line 336
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

    iget v3, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    invoke-direct {p0, v2, v3}, Lcom/htc/widget/HtcDatePicker;->setCurrentDay(Lcom/htc/widget/HtcNumberPicker;I)V

    .line 338
    iget v2, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    const/16 v3, 0x1f

    if-ge v2, v3, :cond_4

    .line 340
    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker:Lcom/htc/widget/HtcNumberPicker;

    iget v3, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    invoke-direct {p0, v2, v3}, Lcom/htc/widget/HtcDatePicker;->setCurrentDay(Lcom/htc/widget/HtcNumberPicker;I)V

    .line 345
    :goto_1
    iget v2, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    if-ge v2, v8, :cond_5

    .line 347
    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    iget v3, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    invoke-direct {p0, v2, v3}, Lcom/htc/widget/HtcDatePicker;->setCurrentDay(Lcom/htc/widget/HtcNumberPicker;I)V

    .line 352
    :goto_2
    iget v2, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    if-ge v2, v7, :cond_6

    .line 354
    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    iget v3, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    invoke-direct {p0, v2, v3}, Lcom/htc/widget/HtcDatePicker;->setCurrentDay(Lcom/htc/widget/HtcNumberPicker;I)V

    .line 359
    :goto_3
    iget v2, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    if-le v2, v1, :cond_1

    .line 360
    iput v1, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    .line 362
    :cond_1
    if-ne v1, v8, :cond_7

    .line 363
    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 364
    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 365
    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 366
    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 383
    :cond_2
    :goto_4
    iput v1, p0, Lcom/htc/widget/HtcDatePicker;->mOldMax:I

    .line 384
    return-void

    .line 332
    :cond_3
    iget v2, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    if-ge v2, v6, :cond_0

    .line 333
    iput v6, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    goto :goto_0

    .line 343
    :cond_4
    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-direct {p0, v2, v8}, Lcom/htc/widget/HtcDatePicker;->setCurrentDay(Lcom/htc/widget/HtcNumberPicker;I)V

    goto :goto_1

    .line 350
    :cond_5
    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    invoke-direct {p0, v2, v7}, Lcom/htc/widget/HtcDatePicker;->setCurrentDay(Lcom/htc/widget/HtcNumberPicker;I)V

    goto :goto_2

    .line 357
    :cond_6
    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    const/16 v3, 0x1c

    invoke-direct {p0, v2, v3}, Lcom/htc/widget/HtcDatePicker;->setCurrentDay(Lcom/htc/widget/HtcNumberPicker;I)V

    goto :goto_3

    .line 367
    :cond_7
    const/16 v2, 0x1f

    if-ne v1, v2, :cond_8

    .line 368
    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 369
    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 370
    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 371
    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    goto :goto_4

    .line 372
    :cond_8
    if-ne v1, v7, :cond_9

    .line 373
    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 374
    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 375
    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 376
    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    goto :goto_4

    .line 377
    :cond_9
    const/16 v2, 0x1c

    if-ne v1, v2, :cond_2

    .line 378
    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 379
    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 380
    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 381
    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    goto :goto_4
.end method

.method private giveMeThePickerInstance(I)Lcom/htc/widget/HtcNumberPicker;
    .locals 2
    .parameter "target"

    .prologue
    .line 620
    const/4 v0, 0x0

    .line 622
    .local v0, tmp:Lcom/htc/widget/HtcNumberPicker;
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mYearPicker:Lcom/htc/widget/HtcNumberPicker;

    .line 625
    :cond_0
    :goto_0
    return-object v0

    .line 623
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mMonthPicker:Lcom/htc/widget/HtcNumberPicker;

    goto :goto_0
.end method

.method private reorderPickers([Ljava/lang/String;)V
    .locals 14
    .parameter "months"

    .prologue
    .line 218
    const/4 v11, 0x0

    aget-object v11, p1, v11

    const-string v12, "1"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 219
    invoke-virtual {p0}, Lcom/htc/widget/HtcDatePicker;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    .line 224
    .local v4, format:Ljava/text/DateFormat;
    :goto_0
    iget-object v11, p0, Lcom/htc/widget/HtcDatePicker;->mOrder:Ljava/lang/String;

    if-eqz v11, :cond_8

    .line 225
    iget-object v7, p0, Lcom/htc/widget/HtcDatePicker;->mOrder:Ljava/lang/String;

    .line 248
    .end local v4           #format:Ljava/text/DateFormat;
    .local v7, order:Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v11, p0, Lcom/htc/widget/HtcDatePicker;->mLparams:[Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    if-nez v11, :cond_1

    .line 249
    iget-object v12, p0, Lcom/htc/widget/HtcDatePicker;->mLparams:[Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v13, 0x0

    iget-object v11, p0, Lcom/htc/widget/HtcDatePicker;->mMonthCoat:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    aput-object v11, v12, v13

    .line 251
    :cond_1
    iget-object v11, p0, Lcom/htc/widget/HtcDatePicker;->mLparams:[Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    if-nez v11, :cond_2

    .line 252
    iget-object v12, p0, Lcom/htc/widget/HtcDatePicker;->mLparams:[Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v13, 0x1

    iget-object v11, p0, Lcom/htc/widget/HtcDatePicker;->mDayCoat:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    aput-object v11, v12, v13

    .line 254
    :cond_2
    iget-object v11, p0, Lcom/htc/widget/HtcDatePicker;->mLparams:[Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v12, 0x2

    aget-object v11, v11, v12

    if-nez v11, :cond_3

    .line 255
    iget-object v12, p0, Lcom/htc/widget/HtcDatePicker;->mLparams:[Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v13, 0x2

    iget-object v11, p0, Lcom/htc/widget/HtcDatePicker;->mYearCoat:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    aput-object v11, v12, v13

    .line 257
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcDatePicker;->removeAllViews()V

    .line 259
    const/4 v8, 0x0

    .line 260
    .local v8, quoted:Z
    const/4 v1, 0x0

    .local v1, didDay:Z
    const/4 v2, 0x0

    .local v2, didMonth:Z
    const/4 v3, 0x0

    .line 261
    .local v3, didYear:Z
    const/4 v6, 0x0

    .line 262
    .local v6, isTwoPicker:Z
    const-string v11, "-"

    invoke-virtual {v7, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_4

    const-string v11, "-"

    invoke-virtual {v7, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const-string v12, "-"

    invoke-virtual {v7, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    if-ne v11, v12, :cond_4

    .line 263
    const/4 v6, 0x1

    .line 264
    :cond_4
    const/4 v9, 0x0

    .line 265
    .local v9, tmpi:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v5, v11, :cond_12

    .line 266
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 268
    .local v0, c:C
    const/16 v11, 0x27

    if-ne v0, v11, :cond_5

    .line 269
    if-nez v8, :cond_b

    const/4 v8, 0x1

    .line 272
    :cond_5
    :goto_3
    if-nez v8, :cond_6

    .line 273
    const/16 v11, 0x64

    if-ne v0, v11, :cond_d

    if-nez v1, :cond_d

    .line 275
    iget-object v11, p0, Lcom/htc/widget/HtcDatePicker;->mDayCoat:Landroid/view/View;

    iget-object v12, p0, Lcom/htc/widget/HtcDatePicker;->mLparams:[Landroid/view/ViewGroup$MarginLayoutParams;

    aget-object v12, v12, v9

    invoke-virtual {p0, v11, v12}, Lcom/htc/widget/HtcDatePicker;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    if-eqz v6, :cond_c

    .line 278
    const/4 v9, 0x2

    .line 281
    :goto_4
    const/4 v1, 0x1

    .line 265
    :cond_6
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 221
    .end local v0           #c:C
    .end local v1           #didDay:Z
    .end local v2           #didMonth:Z
    .end local v3           #didYear:Z
    .end local v5           #i:I
    .end local v6           #isTwoPicker:Z
    .end local v7           #order:Ljava/lang/String;
    .end local v8           #quoted:Z
    .end local v9           #tmpi:I
    :cond_7
    invoke-virtual {p0}, Lcom/htc/widget/HtcDatePicker;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    .restart local v4       #format:Ljava/text/DateFormat;
    goto/16 :goto_0

    .line 226
    :cond_8
    instance-of v11, v4, Ljava/text/SimpleDateFormat;

    if-eqz v11, :cond_a

    .line 227
    iget-object v11, p0, Lcom/htc/widget/HtcDatePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "date_format"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 228
    .restart local v7       #order:Ljava/lang/String;
    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x2

    if-ge v11, v12, :cond_0

    .line 229
    :cond_9
    check-cast v4, Ljava/text/SimpleDateFormat;

    .end local v4           #format:Ljava/text/DateFormat;
    invoke-virtual {v4}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 232
    .end local v7           #order:Ljava/lang/String;
    .restart local v4       #format:Ljava/text/DateFormat;
    :cond_a
    new-instance v7, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/widget/HtcDatePicker;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/lang/String;-><init>([C)V

    .restart local v7       #order:Ljava/lang/String;
    goto/16 :goto_1

    .line 269
    .end local v4           #format:Ljava/text/DateFormat;
    .restart local v0       #c:C
    .restart local v1       #didDay:Z
    .restart local v2       #didMonth:Z
    .restart local v3       #didYear:Z
    .restart local v5       #i:I
    .restart local v6       #isTwoPicker:Z
    .restart local v8       #quoted:Z
    .restart local v9       #tmpi:I
    :cond_b
    const/4 v8, 0x0

    goto :goto_3

    .line 280
    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 282
    :cond_d
    const/16 v11, 0x4d

    if-eq v0, v11, :cond_e

    const/16 v11, 0x4c

    if-ne v0, v11, :cond_10

    :cond_e
    if-nez v2, :cond_10

    .line 284
    iget-object v11, p0, Lcom/htc/widget/HtcDatePicker;->mMonthCoat:Landroid/view/View;

    iget-object v12, p0, Lcom/htc/widget/HtcDatePicker;->mLparams:[Landroid/view/ViewGroup$MarginLayoutParams;

    aget-object v12, v12, v9

    invoke-virtual {p0, v11, v12}, Lcom/htc/widget/HtcDatePicker;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    if-eqz v6, :cond_f

    .line 287
    const/4 v9, 0x2

    .line 290
    :goto_6
    const/4 v2, 0x1

    goto :goto_5

    .line 289
    :cond_f
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 291
    :cond_10
    const/16 v11, 0x79

    if-ne v0, v11, :cond_6

    if-nez v3, :cond_6

    .line 293
    iget-object v11, p0, Lcom/htc/widget/HtcDatePicker;->mYearCoat:Landroid/view/View;

    iget-object v12, p0, Lcom/htc/widget/HtcDatePicker;->mLparams:[Landroid/view/ViewGroup$MarginLayoutParams;

    aget-object v12, v12, v9

    invoke-virtual {p0, v11, v12}, Lcom/htc/widget/HtcDatePicker;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    if-eqz v6, :cond_11

    .line 296
    const/4 v9, 0x2

    .line 299
    :goto_7
    const/4 v3, 0x1

    goto :goto_5

    .line 298
    :cond_11
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 303
    .end local v0           #c:C
    :cond_12
    if-eqz v3, :cond_13

    if-eqz v2, :cond_13

    if-nez v1, :cond_13

    .line 304
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v11, p0, Lcom/htc/widget/HtcDatePicker;->mLparams:[Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v12, 0x2

    aget-object v11, v11, v12

    iget v11, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v12, p0, Lcom/htc/widget/HtcDatePicker;->mLparams:[Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v13, 0x2

    aget-object v12, v12, v13

    iget v12, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v10, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 305
    .local v10, yearLP:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v11, 0xe

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 307
    iget-object v11, p0, Lcom/htc/widget/HtcDatePicker;->mLparams:[Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v12, 0x2

    aget-object v11, v11, v12

    iget v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v11, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 308
    iget-object v11, p0, Lcom/htc/widget/HtcDatePicker;->mYearCoat:Landroid/view/View;

    invoke-virtual {v11, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    .end local v10           #yearLP:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_13
    return-void
.end method

.method private setCurrentDay(Lcom/htc/widget/HtcNumberPicker;I)V
    .locals 1
    .parameter "picker"
    .parameter "target"

    .prologue
    .line 387
    if-nez p1, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    iget-boolean v0, p1, Lcom/htc/widget/HtcNumberPicker;->mReadyToSet:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/htc/widget/HtcNumberPicker;->getCenterView()I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 391
    :cond_2
    invoke-virtual {p1, p2}, Lcom/htc/widget/HtcNumberPicker;->setCenterView(I)V

    goto :goto_0
.end method

.method private setDayPickersBackground(II)V
    .locals 1
    .parameter "tumblerId"
    .parameter "shadowId"

    .prologue
    .line 606
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/HtcNumberPicker;->setBackground(II)V

    .line 607
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/HtcNumberPicker;->setBackground(II)V

    .line 608
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/HtcNumberPicker;->setBackground(II)V

    .line 609
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/HtcNumberPicker;->setBackground(II)V

    .line 610
    return-void
.end method

.method private setDayPickersTextColor(I)V
    .locals 1
    .parameter "textColor"

    .prologue
    .line 613
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setTextColor(I)V

    .line 614
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setTextColor(I)V

    .line 615
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setTextColor(I)V

    .line 616
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setTextColor(I)V

    .line 617
    return-void
.end method

.method private updateTables()V
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lcom/htc/widget/HtcDatePicker;->mYear:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcDatePicker;->setCurrentYear(I)V

    .line 314
    iget v0, p0, Lcom/htc/widget/HtcDatePicker;->mMonth:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcDatePicker;->setCurrentMonth(I)V

    .line 315
    invoke-direct {p0}, Lcom/htc/widget/HtcDatePicker;->correctDayPicker()V

    .line 318
    return-void
.end method


# virtual methods
.method public disableTitle()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 561
    iget-object v1, p0, Lcom/htc/widget/HtcDatePicker;->mLabelDay:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 562
    iget-object v1, p0, Lcom/htc/widget/HtcDatePicker;->mLabelMonth:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 563
    iget-object v1, p0, Lcom/htc/widget/HtcDatePicker;->mLabelYear:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 564
    iget-object v1, p0, Lcom/htc/widget/HtcDatePicker;->mMonthPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 565
    .local v0, tmpParam:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 566
    iget-object v1, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #tmpParam:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 567
    .restart local v0       #tmpParam:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 568
    iget-object v1, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #tmpParam:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 569
    .restart local v0       #tmpParam:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 570
    iget-object v1, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #tmpParam:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 571
    .restart local v0       #tmpParam:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 572
    iget-object v1, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #tmpParam:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 573
    .restart local v0       #tmpParam:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 574
    iget-object v1, p0, Lcom/htc/widget/HtcDatePicker;->mYearPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #tmpParam:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 575
    .restart local v0       #tmpParam:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 576
    return-void
.end method

.method public dispatchOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 422
    if-eqz p1, :cond_5

    .line 423
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mMonthPicker:Lcom/htc/widget/HtcNumberPicker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mMonthPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker:Lcom/htc/widget/HtcNumberPicker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V

    .line 425
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V

    .line 426
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V

    .line 427
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V

    .line 428
    :cond_4
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mYearPicker:Lcom/htc/widget/HtcNumberPicker;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mYearPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V

    .line 430
    :cond_5
    return-void
.end method

.method public getCurrentDay()I
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->getCenterView()I

    move-result v0

    .line 473
    :goto_0
    return v0

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 469
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->getCenterView()I

    move-result v0

    goto :goto_0

    .line 470
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 471
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->getCenterView()I

    move-result v0

    goto :goto_0

    .line 473
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->getCenterView()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentMonth()I
    .locals 2

    .prologue
    .line 459
    iget-object v1, p0, Lcom/htc/widget/HtcDatePicker;->mMonthPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->getCenterView()I

    move-result v0

    .line 460
    .local v0, month:I
    return v0
.end method

.method public getCurrentYear()I
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mYearPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->getCenterView()I

    move-result v0

    return v0
.end method

.method public init(IIILcom/htc/widget/HtcDatePicker$OnDateChangedListener;)V
    .locals 0
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "onDateChangedListener"

    .prologue
    .line 156
    iput p1, p0, Lcom/htc/widget/HtcDatePicker;->mYear:I

    .line 157
    iput p2, p0, Lcom/htc/widget/HtcDatePicker;->mMonth:I

    .line 158
    iput p3, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    .line 159
    iput-object p4, p0, Lcom/htc/widget/HtcDatePicker;->mOnDateChangedListener:Lcom/htc/widget/HtcDatePicker$OnDateChangedListener;

    .line 160
    invoke-direct {p0}, Lcom/htc/widget/HtcDatePicker;->updateTables()V

    .line 161
    return-void
.end method

.method public initPicker(III)V
    .locals 5
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    const/16 v2, 0x1e

    const/4 v4, 0x1

    .line 165
    iget-object v1, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1, v4, v2}, Lcom/htc/widget/HtcNumberPicker;->setRange(II)V

    .line 166
    iput v2, p0, Lcom/htc/widget/HtcDatePicker;->mOldMax:I

    .line 167
    iget-object v1, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

    const/16 v2, 0x1f

    invoke-virtual {v1, v4, v2}, Lcom/htc/widget/HtcNumberPicker;->setRange(II)V

    .line 168
    iget-object v1, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    const/16 v2, 0x1d

    invoke-virtual {v1, v4, v2}, Lcom/htc/widget/HtcNumberPicker;->setRange(II)V

    .line 169
    iget-object v1, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    const/16 v2, 0x1c

    invoke-virtual {v1, v4, v2}, Lcom/htc/widget/HtcNumberPicker;->setRange(II)V

    .line 172
    const/16 v1, 0xc

    invoke-virtual {p0, v4, v1}, Lcom/htc/widget/HtcDatePicker;->setMonthRange(II)V

    .line 173
    iget v1, p0, Lcom/htc/widget/HtcDatePicker;->mStartYear:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/widget/HtcDatePicker;->mEndYear:I

    if-nez v1, :cond_1

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcDatePicker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/widget/HtcDatePicker;->mAttrs:Landroid/util/AttributeSet;

    sget-object v3, Landroid/R$styleable;->DatePicker:[I

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 175
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v1, 0x7c7

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcDatePicker;->mStartYear:I

    .line 176
    const/4 v1, 0x2

    const/16 v2, 0x7ee

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcDatePicker;->mEndYear:I

    .line 177
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 179
    .end local v0           #a:Landroid/content/res/TypedArray;
    :cond_1
    iget v1, p0, Lcom/htc/widget/HtcDatePicker;->mStartYear:I

    iget v2, p0, Lcom/htc/widget/HtcDatePicker;->mEndYear:I

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcDatePicker;->setYearRange(II)V

    .line 182
    iget-object v1, p0, Lcom/htc/widget/HtcDatePicker;->mOnDateChangedListener:Lcom/htc/widget/HtcDatePicker$OnDateChangedListener;

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/htc/widget/HtcDatePicker;->init(IIILcom/htc/widget/HtcDatePicker$OnDateChangedListener;)V

    .line 183
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 190
    const/16 v0, 0x62

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v1, :cond_0

    const/16 v0, 0x42

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, v1, :cond_1

    .line 192
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcDatePicker;->mYear:I

    iget v1, p0, Lcom/htc/widget/HtcDatePicker;->mMonth:I

    iget v2, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/widget/HtcDatePicker;->initPicker(III)V

    .line 195
    :cond_1
    return-void
.end method

.method public onDataSet(Lcom/htc/widget/HtcNumberPicker;I)V
    .locals 4
    .parameter "target"
    .parameter "data"

    .prologue
    .line 533
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mMonthPicker:Lcom/htc/widget/HtcNumberPicker;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mYearPicker:Lcom/htc/widget/HtcNumberPicker;

    if-ne v0, p1, :cond_2

    .line 534
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcDatePicker;->getCurrentMonth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcDatePicker;->mMonth:I

    .line 535
    invoke-virtual {p0}, Lcom/htc/widget/HtcDatePicker;->getCurrentYear()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcDatePicker;->mYear:I

    .line 537
    invoke-direct {p0}, Lcom/htc/widget/HtcDatePicker;->correctDayPicker()V

    .line 538
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mOnDateChangedListener:Lcom/htc/widget/HtcDatePicker$OnDateChangedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mOnDateChangedListener:Lcom/htc/widget/HtcDatePicker$OnDateChangedListener;

    iget v1, p0, Lcom/htc/widget/HtcDatePicker;->mYear:I

    iget v2, p0, Lcom/htc/widget/HtcDatePicker;->mMonth:I

    iget v3, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/htc/widget/HtcDatePicker$OnDateChangedListener;->onDateChanged(Lcom/htc/widget/HtcDatePicker;III)V

    .line 544
    :cond_1
    :goto_0
    return-void

    .line 539
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker:Lcom/htc/widget/HtcNumberPicker;

    if-eq v0, p1, :cond_3

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    if-eq v0, p1, :cond_3

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    if-eq v0, p1, :cond_3

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

    if-ne v0, p1, :cond_1

    .line 541
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/HtcDatePicker;->getCurrentDay()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    .line 542
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mOnDateChangedListener:Lcom/htc/widget/HtcDatePicker$OnDateChangedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mOnDateChangedListener:Lcom/htc/widget/HtcDatePicker$OnDateChangedListener;

    iget v1, p0, Lcom/htc/widget/HtcDatePicker;->mYear:I

    iget v2, p0, Lcom/htc/widget/HtcDatePicker;->mMonth:I

    iget v3, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/htc/widget/HtcDatePicker$OnDateChangedListener;->onDateChanged(Lcom/htc/widget/HtcDatePicker;III)V

    goto :goto_0
.end method

.method public onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 199
    const/16 v0, 0x62

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v1, :cond_0

    const/16 v0, 0x42

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, v1, :cond_1

    .line 201
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcDatePicker;->mYear:I

    iget v1, p0, Lcom/htc/widget/HtcDatePicker;->mMonth:I

    iget v2, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/widget/HtcDatePicker;->initPicker(III)V

    .line 205
    :cond_1
    return-void
.end method

.method public releaseResource()V
    .locals 1

    .prologue
    .line 522
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mContext:Landroid/content/Context;

    .line 523
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mMonthPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->releaseResource()V

    .line 524
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->releaseResource()V

    .line 525
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->releaseResource()V

    .line 526
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->releaseResource()V

    .line 527
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->releaseResource()V

    .line 528
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mYearPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->releaseResource()V

    .line 529
    return-void
.end method

.method public setCurrentDay(I)V
    .locals 0
    .parameter "day"

    .prologue
    .line 445
    iput p1, p0, Lcom/htc/widget/HtcDatePicker;->mDay:I

    .line 446
    invoke-direct {p0}, Lcom/htc/widget/HtcDatePicker;->correctDayPicker()V

    .line 447
    return-void
.end method

.method public setCurrentMonth(I)V
    .locals 1
    .parameter "month"

    .prologue
    .line 434
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mMonthPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setCenterView(I)V

    .line 435
    return-void
.end method

.method public setCurrentYear(I)V
    .locals 1
    .parameter "year"

    .prologue
    .line 455
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mYearPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setCenterView(I)V

    .line 456
    return-void
.end method

.method public setDayPickerTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 547
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mLabelDay:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    return-void
.end method

.method public setDayRange(II)V
    .locals 3
    .parameter "min"
    .parameter "max"

    .prologue
    .line 503
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker:Lcom/htc/widget/HtcNumberPicker;

    iget v1, p0, Lcom/htc/widget/HtcDatePicker;->mRangeDayMin:I

    iget v2, p0, Lcom/htc/widget/HtcDatePicker;->mRangeDayMax:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcNumberPicker;->setRange(II)V

    .line 504
    return-void
.end method

.method public setMonthPickerTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 552
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mLabelMonth:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 553
    return-void
.end method

.method public setMonthRange(II)V
    .locals 1
    .parameter "min"
    .parameter "max"

    .prologue
    .line 483
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mMonthPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/HtcNumberPicker;->setRange(II)V

    .line 484
    return-void
.end method

.method public setOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 417
    if-eqz p1, :cond_0

    .line 418
    iput-object p1, p0, Lcom/htc/widget/HtcDatePicker;->mIdleScrollListener:Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;

    .line 419
    :cond_0
    return-void
.end method

.method public setPickerBackground(III)V
    .locals 2
    .parameter "target"
    .parameter "tumblerId"
    .parameter "shadowId"

    .prologue
    const/4 v1, 0x2

    .line 589
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcDatePicker;->giveMeThePickerInstance(I)Lcom/htc/widget/HtcNumberPicker;

    move-result-object v0

    .line 591
    .local v0, tmp:Lcom/htc/widget/HtcNumberPicker;
    if-nez v0, :cond_0

    if-eq p1, v1, :cond_0

    .line 594
    :goto_0
    return-void

    .line 592
    :cond_0
    if-nez v0, :cond_1

    if-ne p1, v1, :cond_1

    invoke-direct {p0, p2, p3}, Lcom/htc/widget/HtcDatePicker;->setDayPickersBackground(II)V

    goto :goto_0

    .line 593
    :cond_1
    invoke-virtual {v0, p2, p3}, Lcom/htc/widget/HtcNumberPicker;->setBackground(II)V

    goto :goto_0
.end method

.method public setPickerTextColor(II)V
    .locals 2
    .parameter "target"
    .parameter "textColor"

    .prologue
    const/4 v1, 0x2

    .line 598
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcDatePicker;->giveMeThePickerInstance(I)Lcom/htc/widget/HtcNumberPicker;

    move-result-object v0

    .line 600
    .local v0, tmp:Lcom/htc/widget/HtcNumberPicker;
    if-nez v0, :cond_0

    if-eq p1, v1, :cond_0

    .line 603
    :goto_0
    return-void

    .line 601
    :cond_0
    if-nez v0, :cond_1

    if-ne p1, v1, :cond_1

    invoke-direct {p0, p2}, Lcom/htc/widget/HtcDatePicker;->setDayPickersTextColor(I)V

    goto :goto_0

    .line 602
    :cond_1
    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcNumberPicker;->setTextColor(I)V

    goto :goto_0
.end method

.method public setPickersOrder(Ljava/lang/String;)V
    .locals 2
    .parameter "order"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/htc/widget/HtcDatePicker;->mOrder:Ljava/lang/String;

    .line 210
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 211
    .local v0, dfs:Ljava/text/DateFormatSymbols;
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, months:[Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/htc/widget/HtcDatePicker;->reorderPickers([Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method public setRepeatEnable(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 579
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setRepeatEnable(Z)V

    .line 580
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_31:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setRepeatEnable(Z)V

    .line 581
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_29:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setRepeatEnable(Z)V

    .line 582
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mDayPicker_28:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setRepeatEnable(Z)V

    .line 583
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mMonthPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setRepeatEnable(Z)V

    .line 584
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mYearPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setRepeatEnable(Z)V

    .line 585
    return-void
.end method

.method public setYearPickerTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 557
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mLabelYear:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 558
    return-void
.end method

.method public setYearRange(II)V
    .locals 3
    .parameter "min"
    .parameter "max"

    .prologue
    .line 509
    iput p1, p0, Lcom/htc/widget/HtcDatePicker;->mStartYear:I

    .line 510
    iput p2, p0, Lcom/htc/widget/HtcDatePicker;->mEndYear:I

    .line 511
    iget-object v0, p0, Lcom/htc/widget/HtcDatePicker;->mYearPicker:Lcom/htc/widget/HtcNumberPicker;

    iget v1, p0, Lcom/htc/widget/HtcDatePicker;->mStartYear:I

    iget v2, p0, Lcom/htc/widget/HtcDatePicker;->mEndYear:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcNumberPicker;->setRange(II)V

    .line 512
    return-void
.end method
