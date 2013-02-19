.class public Lcom/htc/widget/HtcTimePicker;
.super Landroid/widget/RelativeLayout;
.source "HtcTimePicker.java"

# interfaces
.implements Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcTimePicker$OnTimeSetListener;
    }
.end annotation


# static fields
.field private static final LOG:Z = false

.field public static final PICKER_TYPE_AMPM:I = 0x3

.field public static final PICKER_TYPE_HOUR:I = 0x0

.field public static final PICKER_TYPE_MINUTE:I = 0x1

.field public static final PICKER_TYPE_SECOND:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HtcTimePicker"


# instance fields
.field private final mAmPmCoat:Landroid/view/View;

.field private final mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

.field private mContext:Landroid/content/Context;

.field private mCurrentAMPM:I

.field private mCurrentHour:I

.field private mCurrentMinute:I

.field private mCurrentSecond:I

.field private mCustomWidth:I

.field private mEndHour:I

.field private mEndMinute:I

.field private mEndSecond:I

.field private final mHourCoat:Landroid/view/View;

.field private final mHourPicker:Lcom/htc/widget/HtcNumberPicker;

.field private mIdleScrollListener:Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;

.field private mIsFirstCreate:Z

.field private mIsHourInit:Z

.field private mIsMinuteInit:Z

.field private mIsMultiStop:Z

.field private mIsSecondInit:Z

.field private final mLabelAmPm:Landroid/widget/TextView;

.field private final mLabelHour:Landroid/widget/TextView;

.field private final mLabelMinute:Landroid/widget/TextView;

.field private final mLabelSecond:Landroid/widget/TextView;

.field private mLparams:[Landroid/view/ViewGroup$LayoutParams;

.field private mMaxHour:I

.field private final mMinuteCoat:Landroid/view/View;

.field private final mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

.field private mOnTimeSetListener:Lcom/htc/widget/HtcTimePicker$OnTimeSetListener;

.field private mOrder:Ljava/lang/String;

.field private final mSecondCoat:Landroid/view/View;

.field private final mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

.field private mSetCustomWidth:Z

.field private mStartHour:I

.field private mStartMinute:I

.field private mStartSecond:I

.field private mTableInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v10, 0x17

    const/4 v9, 0x2

    const/16 v6, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 98
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/widget/HtcTimePicker;->mIdleScrollListener:Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;

    .line 56
    iput v7, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentHour:I

    .line 57
    iput v7, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentMinute:I

    .line 58
    iput v7, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentSecond:I

    .line 59
    iput v10, p0, Lcom/htc/widget/HtcTimePicker;->mMaxHour:I

    .line 60
    iput v7, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentAMPM:I

    .line 61
    iput-boolean v8, p0, Lcom/htc/widget/HtcTimePicker;->mIsHourInit:Z

    .line 62
    iput-boolean v8, p0, Lcom/htc/widget/HtcTimePicker;->mIsMinuteInit:Z

    .line 63
    iput-boolean v8, p0, Lcom/htc/widget/HtcTimePicker;->mIsSecondInit:Z

    .line 64
    iput-boolean v7, p0, Lcom/htc/widget/HtcTimePicker;->mIsMultiStop:Z

    .line 65
    iput-boolean v8, p0, Lcom/htc/widget/HtcTimePicker;->mIsFirstCreate:Z

    .line 74
    const/4 v5, 0x3

    new-array v5, v5, [Landroid/view/ViewGroup$LayoutParams;

    iput-object v5, p0, Lcom/htc/widget/HtcTimePicker;->mLparams:[Landroid/view/ViewGroup$LayoutParams;

    .line 590
    const/high16 v5, -0x8000

    iput v5, p0, Lcom/htc/widget/HtcTimePicker;->mCustomWidth:I

    .line 591
    iput-boolean v7, p0, Lcom/htc/widget/HtcTimePicker;->mSetCustomWidth:Z

    .line 99
    iput-object p1, p0, Lcom/htc/widget/HtcTimePicker;->mContext:Landroid/content/Context;

    .line 100
    const-string v5, "layout_inflater"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 101
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v5, 0x2090091

    invoke-virtual {v3, v5, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 103
    const v5, 0x2020179

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcNumberPicker;

    iput-object v5, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    .line 104
    const v5, 0x202017a

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcNumberPicker;

    iput-object v5, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    .line 105
    const v5, 0x202017b

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcNumberPicker;

    iput-object v5, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    .line 106
    const v5, 0x202017c

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcNumberPicker;

    iput-object v5, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    .line 108
    const v5, 0x2020189

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcTimePicker;->mHourCoat:Landroid/view/View;

    .line 109
    const v5, 0x202018b

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcTimePicker;->mMinuteCoat:Landroid/view/View;

    .line 110
    const v5, 0x202018d

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcTimePicker;->mSecondCoat:Landroid/view/View;

    .line 111
    const v5, 0x202018f

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmCoat:Landroid/view/View;

    .line 113
    const v5, 0x202018a

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/htc/widget/HtcTimePicker;->mLabelHour:Landroid/widget/TextView;

    .line 114
    const v5, 0x202018c

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/htc/widget/HtcTimePicker;->mLabelMinute:Landroid/widget/TextView;

    .line 115
    const v5, 0x202018e

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/htc/widget/HtcTimePicker;->mLabelSecond:Landroid/widget/TextView;

    .line 116
    const v5, 0x2020190

    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/htc/widget/HtcTimePicker;->mLabelAmPm:Landroid/widget/TextView;

    .line 120
    iget-object v5, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v5, v7}, Lcom/htc/widget/HtcNumberPicker;->setEnabled(Z)V

    .line 121
    iget-object v5, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 122
    iget-object v5, p0, Lcom/htc/widget/HtcTimePicker;->mSecondCoat:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 124
    const/16 v5, 0x3b

    invoke-virtual {p0, v7, v5}, Lcom/htc/widget/HtcTimePicker;->setMinuteRange(II)V

    .line 125
    const/16 v5, 0x3b

    invoke-virtual {p0, v7, v5}, Lcom/htc/widget/HtcTimePicker;->setSecondRange(II)V

    .line 128
    iget-object v5, p0, Lcom/htc/widget/HtcTimePicker;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 129
    const/16 v5, 0xc

    invoke-virtual {p0, v8, v5}, Lcom/htc/widget/HtcTimePicker;->setHourRange(II)V

    .line 130
    iget-object v5, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcNumberPicker;->setEnabled(Z)V

    .line 131
    iget-object v5, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v5, v7}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 132
    new-array v0, v9, [Ljava/lang/String;

    .line 133
    .local v0, ampm:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/widget/HtcTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x204018d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v7

    .line 134
    invoke-virtual {p0}, Lcom/htc/widget/HtcTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x204018e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v8

    .line 135
    aget-object v5, v0, v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v9, :cond_0

    aget-object v5, v0, v8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v9, :cond_1

    .line 136
    :cond_0
    const-string v5, "AM"

    aput-object v5, v0, v7

    .line 137
    const-string v5, "PM"

    aput-object v5, v0, v8

    .line 139
    :cond_1
    invoke-virtual {p0, v7, v8, v0}, Lcom/htc/widget/HtcTimePicker;->setAmPmRange(II[Ljava/lang/String;)V

    .line 148
    .end local v0           #ampm:[Ljava/lang/String;
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 155
    .local v1, cal:Ljava/util/Calendar;
    new-instance v2, Ljava/text/DateFormatSymbols;

    invoke-direct {v2}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 156
    .local v2, dfs:Ljava/text/DateFormatSymbols;
    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v4

    .line 159
    .local v4, months:[Ljava/lang/String;
    invoke-virtual {p0, p0}, Lcom/htc/widget/HtcTimePicker;->dispatchOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V

    .line 160
    iput-boolean v8, p0, Lcom/htc/widget/HtcTimePicker;->mIsFirstCreate:Z

    .line 161
    return-void

    .line 141
    .end local v1           #cal:Ljava/util/Calendar;
    .end local v2           #dfs:Ljava/text/DateFormatSymbols;
    .end local v4           #months:[Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v7, v10}, Lcom/htc/widget/HtcTimePicker;->setHourRange(II)V

    .line 142
    iget-object v5, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v5, v7}, Lcom/htc/widget/HtcNumberPicker;->setEnabled(Z)V

    .line 143
    iget-object v5, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 144
    iget-object v5, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmCoat:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 145
    iget-object v5, p0, Lcom/htc/widget/HtcTimePicker;->mLabelAmPm:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private giveMeThePickerInstance(I)Lcom/htc/widget/HtcNumberPicker;
    .locals 2
    .parameter "target"

    .prologue
    .line 660
    const/4 v0, 0x0

    .line 662
    .local v0, tmp:Lcom/htc/widget/HtcNumberPicker;
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    .line 667
    :cond_0
    :goto_0
    return-object v0

    .line 663
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    goto :goto_0

    .line 664
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    goto :goto_0

    .line 665
    :cond_3
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    goto :goto_0
.end method

.method private setAllPickerWidth(I)V
    .locals 1
    .parameter "width"

    .prologue
    .line 629
    iput p1, p0, Lcom/htc/widget/HtcTimePicker;->mCustomWidth:I

    .line 630
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcTimePicker;->mSetCustomWidth:Z

    .line 631
    return-void
.end method

.method private updateTables()V
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentHour:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTimePicker;->setCurrentHour(I)V

    .line 361
    iget v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentMinute:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTimePicker;->setCurrentMinute(I)V

    .line 362
    iget v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentSecond:I

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcTimePicker;->setCurrentSecond(I)V

    .line 363
    return-void
.end method


# virtual methods
.method public disableTitle()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 551
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mLabelHour:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 552
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mLabelMinute:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 553
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mLabelSecond:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 554
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mLabelAmPm:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 556
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 557
    .local v0, tmpParam:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 558
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #tmpParam:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 559
    .restart local v0       #tmpParam:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 560
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #tmpParam:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 561
    .restart local v0       #tmpParam:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 562
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #tmpParam:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 563
    .restart local v0       #tmpParam:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 564
    return-void
.end method

.method public dispatchOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 371
    if-eqz p1, :cond_3

    .line 372
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V

    .line 374
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V

    .line 375
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V

    .line 377
    :cond_3
    return-void
.end method

.method public getCurrentAmPm()I
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->getCenterView()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()I
    .locals 3

    .prologue
    .line 430
    iget-object v2, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2}, Lcom/htc/widget/HtcNumberPicker;->getCenterView()I

    move-result v1

    .line 431
    .local v1, h:I
    iget-object v2, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2}, Lcom/htc/widget/HtcNumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 432
    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 433
    const/4 v1, 0x0

    .line 434
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcTimePicker;->getCurrentAmPm()I

    move-result v0

    .line 435
    .local v0, am:I
    if-nez v0, :cond_1

    .line 436
    add-int/lit8 v1, v1, 0xc

    .line 438
    .end local v0           #am:I
    :cond_1
    return v1
.end method

.method public getCurrentMinute()I
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->getCenterView()I

    move-result v0

    return v0
.end method

.method public getCurrentSecond()I
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->getCenterView()I

    move-result v0

    return v0
.end method

.method public getTableViewSlideOffset()I
    .locals 2

    .prologue
    .line 672
    const/4 v0, 0x0

    .line 674
    .local v0, tmp:Lcom/htc/widget/HtcNumberPicker;
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    .line 678
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    const/4 v1, 0x0

    :goto_1
    return v1

    .line 675
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    goto :goto_0

    .line 676
    :cond_2
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    goto :goto_0

    .line 678
    :cond_3
    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->getTableViewSlideOffset()I

    move-result v1

    goto :goto_1
.end method

.method public init(IIILcom/htc/widget/HtcTimePicker$OnTimeSetListener;)V
    .locals 1
    .parameter "hour"
    .parameter "minute"
    .parameter "second"
    .parameter "onTimeSetListener"

    .prologue
    const/4 v0, 0x1

    .line 262
    iput p1, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentHour:I

    .line 263
    iput p2, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentMinute:I

    .line 264
    iput p3, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentSecond:I

    .line 265
    iput-boolean v0, p0, Lcom/htc/widget/HtcTimePicker;->mIsHourInit:Z

    .line 266
    iput-boolean v0, p0, Lcom/htc/widget/HtcTimePicker;->mIsMinuteInit:Z

    .line 267
    iput-boolean v0, p0, Lcom/htc/widget/HtcTimePicker;->mIsSecondInit:Z

    .line 268
    iput-object p4, p0, Lcom/htc/widget/HtcTimePicker;->mOnTimeSetListener:Lcom/htc/widget/HtcTimePicker$OnTimeSetListener;

    .line 269
    invoke-direct {p0}, Lcom/htc/widget/HtcTimePicker;->updateTables()V

    .line 270
    return-void
.end method

.method public initPicker(III)V
    .locals 7
    .parameter "hour"
    .parameter "minute"
    .parameter "second"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 174
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->getTableView()Lcom/htc/view/table/TableView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/htc/view/table/TableView;->setVisibility(I)V

    .line 175
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->getTableView()Lcom/htc/view/table/TableView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/htc/view/table/TableView;->setVisibility(I)V

    .line 176
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->getTableView()Lcom/htc/view/table/TableView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/htc/view/table/TableView;->setVisibility(I)V

    .line 177
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->getTableView()Lcom/htc/view/table/TableView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/htc/view/table/TableView;->setVisibility(I)V

    .line 178
    iget v1, p0, Lcom/htc/widget/HtcTimePicker;->mStartMinute:I

    iget v2, p0, Lcom/htc/widget/HtcTimePicker;->mEndMinute:I

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcTimePicker;->setMinuteRange(II)V

    .line 179
    iget v1, p0, Lcom/htc/widget/HtcTimePicker;->mStartSecond:I

    iget v2, p0, Lcom/htc/widget/HtcTimePicker;->mEndSecond:I

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcTimePicker;->setSecondRange(II)V

    .line 183
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 184
    iget v1, p0, Lcom/htc/widget/HtcTimePicker;->mStartHour:I

    iget v2, p0, Lcom/htc/widget/HtcTimePicker;->mEndHour:I

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcTimePicker;->setHourRange(II)V

    .line 185
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 186
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcNumberPicker;->setEnabled(Z)V

    .line 187
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 188
    new-array v0, v5, [Ljava/lang/String;

    .line 189
    .local v0, ampm:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/widget/HtcTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x204018d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 190
    invoke-virtual {p0}, Lcom/htc/widget/HtcTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x204018e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 191
    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v5, :cond_0

    aget-object v1, v0, v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_1

    .line 192
    :cond_0
    const-string v1, "AM"

    aput-object v1, v0, v3

    .line 193
    const-string v1, "PM"

    aput-object v1, v0, v4

    .line 195
    :cond_1
    invoke-virtual {p0, v3, v4, v0}, Lcom/htc/widget/HtcTimePicker;->setAmPmRange(II[Ljava/lang/String;)V

    .line 205
    .end local v0           #ampm:[Ljava/lang/String;
    :cond_2
    :goto_0
    iget v1, p0, Lcom/htc/widget/HtcTimePicker;->mStartMinute:I

    iget v2, p0, Lcom/htc/widget/HtcTimePicker;->mEndMinute:I

    iget-boolean v3, p0, Lcom/htc/widget/HtcTimePicker;->mIsMultiStop:Z

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/widget/HtcTimePicker;->setMinuteRange(IIZ)V

    .line 206
    invoke-virtual {p0, v4}, Lcom/htc/widget/HtcTimePicker;->setRepeatEnable(Z)V

    .line 207
    const-string v1, "test"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initPicker: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 p3, 0x0

    .line 214
    :cond_3
    iput p1, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentHour:I

    .line 215
    iput p2, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentMinute:I

    .line 216
    iput p3, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentSecond:I

    .line 217
    iput-boolean v4, p0, Lcom/htc/widget/HtcTimePicker;->mIsHourInit:Z

    .line 218
    iput-boolean v4, p0, Lcom/htc/widget/HtcTimePicker;->mIsMinuteInit:Z

    .line 219
    iput-boolean v4, p0, Lcom/htc/widget/HtcTimePicker;->mIsSecondInit:Z

    .line 221
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->notifyOnInitState()V

    .line 222
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->notifyOnInitState()V

    .line 223
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcNumberPicker;->notifyOnInitState()V

    .line 224
    invoke-direct {p0}, Lcom/htc/widget/HtcTimePicker;->updateTables()V

    .line 225
    iget v1, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentAMPM:I

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcTimePicker;->setCurrentAmPm(I)V

    .line 227
    invoke-virtual {p0}, Lcom/htc/widget/HtcTimePicker;->requestFocus()Z

    .line 228
    invoke-virtual {p0, p0}, Lcom/htc/widget/HtcTimePicker;->dispatchOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V

    .line 229
    return-void

    .line 198
    :cond_4
    iget v1, p0, Lcom/htc/widget/HtcTimePicker;->mStartHour:I

    iget v2, p0, Lcom/htc/widget/HtcTimePicker;->mEndHour:I

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcTimePicker;->setHourRange(II)V

    .line 199
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcNumberPicker;->setEnabled(Z)V

    .line 200
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 201
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmCoat:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 202
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mLabelAmPm:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public isSecondPickerEndabled()Z
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->isEnabled()Z

    move-result v0

    .line 586
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 167
    const/16 v0, 0x62

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v0, v1, :cond_0

    const/16 v0, 0x42

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v0, v1, :cond_1

    .line 168
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentHour:I

    iget v1, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentMinute:I

    iget v2, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentSecond:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/widget/HtcTimePicker;->initPicker(III)V

    .line 170
    :cond_1
    return-void
.end method

.method public onDataSet(Lcom/htc/widget/HtcNumberPicker;I)V
    .locals 4
    .parameter "target"
    .parameter "data"

    .prologue
    .line 507
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    if-ne v0, p1, :cond_2

    .line 508
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcTimePicker;->getCurrentHour()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentHour:I

    .line 509
    invoke-virtual {p0}, Lcom/htc/widget/HtcTimePicker;->getCurrentMinute()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentMinute:I

    .line 511
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mOnTimeSetListener:Lcom/htc/widget/HtcTimePicker$OnTimeSetListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mOnTimeSetListener:Lcom/htc/widget/HtcTimePicker$OnTimeSetListener;

    iget v1, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentHour:I

    iget v2, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentMinute:I

    iget v3, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentSecond:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/htc/widget/HtcTimePicker$OnTimeSetListener;->onTimeSet(Lcom/htc/widget/HtcTimePicker;III)V

    .line 521
    :cond_1
    :goto_0
    return-void

    .line 512
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    if-ne v0, p1, :cond_3

    .line 513
    invoke-virtual {p0}, Lcom/htc/widget/HtcTimePicker;->getCurrentHour()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentHour:I

    .line 515
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mOnTimeSetListener:Lcom/htc/widget/HtcTimePicker$OnTimeSetListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mOnTimeSetListener:Lcom/htc/widget/HtcTimePicker$OnTimeSetListener;

    iget v1, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentHour:I

    iget v2, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentMinute:I

    iget v3, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentSecond:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/htc/widget/HtcTimePicker$OnTimeSetListener;->onTimeSet(Lcom/htc/widget/HtcTimePicker;III)V

    goto :goto_0

    .line 516
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    if-ne v0, p1, :cond_1

    .line 517
    invoke-virtual {p0}, Lcom/htc/widget/HtcTimePicker;->getCurrentSecond()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentSecond:I

    .line 519
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mOnTimeSetListener:Lcom/htc/widget/HtcTimePicker$OnTimeSetListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mOnTimeSetListener:Lcom/htc/widget/HtcTimePicker$OnTimeSetListener;

    iget v1, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentHour:I

    iget v2, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentMinute:I

    iget v3, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentSecond:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/htc/widget/HtcTimePicker$OnTimeSetListener;->onTimeSet(Lcom/htc/widget/HtcTimePicker;III)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 596
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 598
    iget-boolean v3, p0, Lcom/htc/widget/HtcTimePicker;->mSetCustomWidth:Z

    if-eqz v3, :cond_2

    .line 599
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcTimePicker;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 600
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcTimePicker;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 601
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 602
    .local v2, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget v3, p0, Lcom/htc/widget/HtcTimePicker;->mCustomWidth:I

    if-lez v3, :cond_0

    iget v3, p0, Lcom/htc/widget/HtcTimePicker;->mCustomWidth:I

    :goto_1
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 603
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 599
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 602
    :cond_0
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    .line 605
    .end local v0           #child:Landroid/view/View;
    .end local v2           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/widget/HtcTimePicker;->mSetCustomWidth:Z

    .line 607
    .end local v1           #i:I
    :cond_2
    return-void
.end method

.method public releaseResource()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 497
    iput-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mContext:Landroid/content/Context;

    .line 498
    iput-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mIdleScrollListener:Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;

    .line 499
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->releaseResource()V

    .line 500
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->releaseResource()V

    .line 501
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->releaseResource()V

    .line 502
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->releaseResource()V

    .line 503
    return-void
.end method

.method public setAmPmRange(II[Ljava/lang/String;)V
    .locals 1
    .parameter "min"
    .parameter "max"
    .parameter "candidates"

    .prologue
    .line 487
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/widget/HtcNumberPicker;->setRange(II[Ljava/lang/String;)V

    .line 488
    return-void
.end method

.method public setCurrentAmPm(I)V
    .locals 1
    .parameter "ampm"

    .prologue
    .line 420
    iput p1, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentAMPM:I

    .line 421
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setCenterView(I)V

    .line 422
    return-void
.end method

.method public setCurrentHour(I)V
    .locals 4
    .parameter "h"

    .prologue
    const/4 v3, 0x0

    const/16 v1, 0xc

    .line 400
    invoke-virtual {p0}, Lcom/htc/widget/HtcTimePicker;->getCurrentHour()I

    move-result v0

    .line 401
    .local v0, old_value:I
    if-ne p1, v0, :cond_0

    iget-boolean v2, p0, Lcom/htc/widget/HtcTimePicker;->mIsHourInit:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/htc/widget/HtcTimePicker;->mMaxHour:I

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_0

    .line 416
    :goto_0
    return-void

    .line 404
    :cond_0
    iput-boolean v3, p0, Lcom/htc/widget/HtcTimePicker;->mIsHourInit:Z

    .line 405
    iput p1, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentHour:I

    .line 406
    iget-object v2, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v2}, Lcom/htc/widget/HtcNumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 407
    if-lt p1, v1, :cond_3

    .line 408
    if-ne p1, v1, :cond_2

    move p1, v1

    .line 409
    :goto_1
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcTimePicker;->setCurrentAmPm(I)V

    .line 415
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcNumberPicker;->setCenterView(I)V

    goto :goto_0

    .line 408
    :cond_2
    add-int/lit8 p1, p1, -0xc

    goto :goto_1

    .line 411
    :cond_3
    if-nez p1, :cond_4

    move p1, v1

    .line 412
    :cond_4
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcTimePicker;->setCurrentAmPm(I)V

    goto :goto_2
.end method

.method public setCurrentMinute(I)V
    .locals 2
    .parameter "m"

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/htc/widget/HtcTimePicker;->getCurrentMinute()I

    move-result v0

    .line 382
    .local v0, old_value:I
    if-ne p1, v0, :cond_0

    iget-boolean v1, p0, Lcom/htc/widget/HtcTimePicker;->mIsMinuteInit:Z

    if-nez v1, :cond_0

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_0

    .line 387
    :goto_0
    return-void

    .line 384
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/HtcTimePicker;->mIsMinuteInit:Z

    .line 385
    iput p1, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentMinute:I

    .line 386
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcNumberPicker;->setCenterView(I)V

    goto :goto_0
.end method

.method public setCurrentSecond(I)V
    .locals 2
    .parameter "s"

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/htc/widget/HtcTimePicker;->getCurrentSecond()I

    move-result v0

    .line 392
    .local v0, old_value:I
    if-ne p1, v0, :cond_0

    iget-boolean v1, p0, Lcom/htc/widget/HtcTimePicker;->mIsSecondInit:Z

    if-nez v1, :cond_0

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_0

    .line 397
    :goto_0
    return-void

    .line 394
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/HtcTimePicker;->mIsSecondInit:Z

    .line 395
    iput p1, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentSecond:I

    .line 396
    iget-object v1, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcNumberPicker;->setCenterView(I)V

    goto :goto_0
.end method

.method public setCustomShadow(IFFFI)V
    .locals 6
    .parameter "layer"
    .parameter "radius"
    .parameter "dx"
    .parameter "dy"
    .parameter "color"

    .prologue
    .line 646
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/widget/HtcTimePicker;->giveMeThePickerInstance(I)Lcom/htc/widget/HtcNumberPicker;

    move-result-object v0

    .line 647
    .local v0, tmpPicker:Lcom/htc/widget/HtcNumberPicker;
    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcNumberPicker;->setCustomShadow(IFFFI)V

    .line 649
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/htc/widget/HtcTimePicker;->giveMeThePickerInstance(I)Lcom/htc/widget/HtcNumberPicker;

    move-result-object v0

    .line 650
    if-eqz v0, :cond_1

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcNumberPicker;->setCustomShadow(IFFFI)V

    .line 652
    :cond_1
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/htc/widget/HtcTimePicker;->giveMeThePickerInstance(I)Lcom/htc/widget/HtcNumberPicker;

    move-result-object v0

    .line 653
    if-eqz v0, :cond_2

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcNumberPicker;->setCustomShadow(IFFFI)V

    .line 655
    :cond_2
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/htc/widget/HtcTimePicker;->giveMeThePickerInstance(I)Lcom/htc/widget/HtcNumberPicker;

    move-result-object v0

    .line 656
    if-eqz v0, :cond_3

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcNumberPicker;->setCustomShadow(IFFFI)V

    .line 657
    :cond_3
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 577
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setTableEnabled(Z)V

    .line 578
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setTableEnabled(Z)V

    .line 579
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setTableEnabled(Z)V

    .line 580
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setTableEnabled(Z)V

    .line 581
    return-void
.end method

.method public setHourPickerTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 567
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mLabelHour:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    return-void
.end method

.method public setHourRange(II)V
    .locals 1
    .parameter "min"
    .parameter "max"

    .prologue
    .line 473
    iput p2, p0, Lcom/htc/widget/HtcTimePicker;->mMaxHour:I

    .line 474
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/HtcNumberPicker;->setRange(II)V

    .line 475
    iput p1, p0, Lcom/htc/widget/HtcTimePicker;->mStartHour:I

    .line 476
    iput p2, p0, Lcom/htc/widget/HtcTimePicker;->mEndHour:I

    .line 477
    return-void
.end method

.method public setMinutePickerTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 570
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mLabelMinute:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 571
    return-void
.end method

.method public setMinuteRange(II)V
    .locals 1
    .parameter "min"
    .parameter "max"

    .prologue
    .line 464
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/HtcNumberPicker;->setRange(II)V

    .line 465
    iput p1, p0, Lcom/htc/widget/HtcTimePicker;->mStartMinute:I

    .line 466
    iput p2, p0, Lcom/htc/widget/HtcTimePicker;->mEndMinute:I

    .line 469
    return-void
.end method

.method public setMinuteRange(IIZ)V
    .locals 2
    .parameter "min"
    .parameter "max"
    .parameter "multiStop"

    .prologue
    .line 452
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/HtcNumberPicker;->setRange(II)V

    .line 453
    iput p1, p0, Lcom/htc/widget/HtcTimePicker;->mStartMinute:I

    .line 454
    iput p2, p0, Lcom/htc/widget/HtcTimePicker;->mEndMinute:I

    .line 455
    iput-boolean p3, p0, Lcom/htc/widget/HtcTimePicker;->mIsMultiStop:Z

    .line 456
    if-eqz p3, :cond_0

    .line 457
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcNumberPicker;->setMultiStopDistance(I)Z

    .line 460
    :goto_0
    return-void

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcNumberPicker;->setMultiStopDistance(I)Z

    goto :goto_0
.end method

.method public setOnScrollIdleStateListener(Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 366
    if-eqz p1, :cond_0

    .line 367
    iput-object p1, p0, Lcom/htc/widget/HtcTimePicker;->mIdleScrollListener:Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;

    .line 368
    :cond_0
    return-void
.end method

.method public setPickerBackground(III)V
    .locals 1
    .parameter "target"
    .parameter "tumblerId"
    .parameter "shadowId"

    .prologue
    .line 611
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcTimePicker;->giveMeThePickerInstance(I)Lcom/htc/widget/HtcNumberPicker;

    move-result-object v0

    .line 613
    .local v0, tmpPicker:Lcom/htc/widget/HtcNumberPicker;
    if-nez v0, :cond_0

    .line 616
    :goto_0
    return-void

    .line 615
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/htc/widget/HtcNumberPicker;->setBackground(II)V

    goto :goto_0
.end method

.method public setPickerBackground(IIII)V
    .locals 1
    .parameter "target"
    .parameter "tumblerId"
    .parameter "shadowId"
    .parameter "width"

    .prologue
    .line 620
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcTimePicker;->giveMeThePickerInstance(I)Lcom/htc/widget/HtcNumberPicker;

    move-result-object v0

    .line 622
    .local v0, tmpPicker:Lcom/htc/widget/HtcNumberPicker;
    if-nez v0, :cond_0

    .line 625
    :goto_0
    return-void

    .line 623
    :cond_0
    invoke-direct {p0, p4}, Lcom/htc/widget/HtcTimePicker;->setAllPickerWidth(I)V

    .line 624
    invoke-virtual {v0, p2, p3}, Lcom/htc/widget/HtcNumberPicker;->setBackground(II)V

    goto :goto_0
.end method

.method public setPickerTextColor(II)V
    .locals 1
    .parameter "target"
    .parameter "textColor"

    .prologue
    .line 635
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcTimePicker;->giveMeThePickerInstance(I)Lcom/htc/widget/HtcNumberPicker;

    move-result-object v0

    .line 637
    .local v0, tmpPicker:Lcom/htc/widget/HtcNumberPicker;
    if-nez v0, :cond_0

    .line 640
    :goto_0
    return-void

    .line 639
    :cond_0
    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcNumberPicker;->setTextColor(I)V

    goto :goto_0
.end method

.method public setRepeatEnable(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 524
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setRepeatEnable(Z)V

    .line 525
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setRepeatEnable(Z)V

    .line 526
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->setRepeatEnable(Z)V

    .line 527
    return-void
.end method

.method public setSecondPickerEnable(Z)V
    .locals 4
    .parameter "b"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 232
    if-eqz p1, :cond_0

    .line 233
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcNumberPicker;->setEnabled(Z)V

    .line 234
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondCoat:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcNumberPicker;->setEnabled(Z)V

    .line 237
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 243
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcNumberPicker;->setEnabled(Z)V

    .line 240
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcNumberPicker;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondCoat:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSecondPickerEnable(ZZ)V
    .locals 2
    .parameter "b"
    .parameter "white"

    .prologue
    .line 246
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcTimePicker;->setSecondPickerEnable(Z)V

    .line 247
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 249
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->changeBkg()V

    goto :goto_0
.end method

.method public setSecondPickerTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 573
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mLabelSecond:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    return-void
.end method

.method public setSecondRange(II)V
    .locals 1
    .parameter "min"
    .parameter "max"

    .prologue
    .line 481
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/HtcNumberPicker;->setRange(II)V

    .line 482
    iput p1, p0, Lcom/htc/widget/HtcTimePicker;->mStartSecond:I

    .line 483
    iput p2, p0, Lcom/htc/widget/HtcTimePicker;->mEndSecond:I

    .line 484
    return-void
.end method

.method public slideHourWithOffset(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 545
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->slideWithOffset(I)V

    .line 546
    iget v0, p0, Lcom/htc/widget/HtcTimePicker;->mEndHour:I

    iget v1, p0, Lcom/htc/widget/HtcTimePicker;->mStartHour:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentHour:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentHour:I

    .line 548
    :goto_0
    return-void

    .line 547
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcTimePicker;->mEndHour:I

    iput v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentHour:I

    goto :goto_0
.end method

.method public slideMinuteWithOffset(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 538
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->slideWithOffset(I)V

    .line 539
    iget v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentMinute:I

    iget v1, p0, Lcom/htc/widget/HtcTimePicker;->mStartMinute:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentMinute:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentMinute:I

    .line 542
    :goto_0
    return-void

    .line 540
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcTimePicker;->mEndMinute:I

    iput v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentMinute:I

    goto :goto_0
.end method

.method public slideSecondWithOffset(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 531
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mSecondPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcNumberPicker;->slideWithOffset(I)V

    .line 532
    iget v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentSecond:I

    iget v1, p0, Lcom/htc/widget/HtcTimePicker;->mStartSecond:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentSecond:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentSecond:I

    .line 535
    :goto_0
    return-void

    .line 533
    :cond_0
    iget v0, p0, Lcom/htc/widget/HtcTimePicker;->mEndSecond:I

    iput v0, p0, Lcom/htc/widget/HtcTimePicker;->mCurrentSecond:I

    goto :goto_0
.end method

.method public startAnimation(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "an"

    .prologue
    .line 491
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mMinutePicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->getTableView()Lcom/htc/view/table/TableView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/view/table/TableView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 492
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mHourPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->getTableView()Lcom/htc/view/table/TableView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/view/table/TableView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 493
    iget-object v0, p0, Lcom/htc/widget/HtcTimePicker;->mAmPmPicker:Lcom/htc/widget/HtcNumberPicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcNumberPicker;->getTableView()Lcom/htc/view/table/TableView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/view/table/TableView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 494
    return-void
.end method
