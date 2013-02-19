.class public Lcom/htc/widget/HtcDatePickerDialog;
.super Lcom/htc/widget/HtcAlertDialog;
.source "HtcDatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/htc/widget/HtcDatePicker$OnDateChangedListener;
.implements Lcom/htc/widget/HtcNumberPicker$OnScrollIdleStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;
    }
.end annotation


# static fields
.field private static final DAY:Ljava/lang/String; = "day"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final TAG:Ljava/lang/String; = "HtcDatePickerDialog"

.field private static final YEAR:Ljava/lang/String; = "year"


# instance fields
.field private isAutoUpdateTitle:Z

.field isWithoutDayPicker:Z

.field private final mCalendar:Ljava/util/Calendar;

.field private final mCallBack:Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;

.field private mContext:Landroid/content/Context;

.field private final mDatePicker:Lcom/htc/widget/HtcDatePicker;

.field mHandler:Landroid/os/Handler;

.field mInitDatePickerDialog:Z

.field private mInitialDay:I

.field private mInitialMonth:I

.field private mInitialYear:I

.field private final mWeekDays:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;III)V
    .locals 8
    .parameter "context"
    .parameter "theme"
    .parameter "callBack"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 217
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAlertDialog;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/htc/widget/HtcDatePickerDialog;->mHandler:Landroid/os/Handler;

    .line 64
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/widget/HtcDatePickerDialog;->isWithoutDayPicker:Z

    .line 319
    iput-boolean v7, p0, Lcom/htc/widget/HtcDatePickerDialog;->isAutoUpdateTitle:Z

    .line 218
    iput-object p1, p0, Lcom/htc/widget/HtcDatePickerDialog;->mContext:Landroid/content/Context;

    .line 219
    iput-object p3, p0, Lcom/htc/widget/HtcDatePickerDialog;->mCallBack:Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;

    .line 220
    iput p4, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialYear:I

    .line 221
    iput p5, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialMonth:I

    .line 222
    iput p6, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialDay:I

    .line 223
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 224
    .local v1, symbols:Ljava/text/DateFormatSymbols;
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/HtcDatePickerDialog;->mWeekDays:[Ljava/lang/String;

    .line 225
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/HtcDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    .line 227
    iget v3, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialYear:I

    iget v5, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialMonth:I

    iget v6, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialDay:I

    invoke-direct {p0, v3, v5, v6}, Lcom/htc/widget/HtcDatePickerDialog;->updateTitle(III)V

    .line 229
    const v3, 0x104000a

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3, p0}, Lcom/htc/widget/HtcDatePickerDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 230
    const/high16 v3, 0x104

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v3, v4

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v5, v3}, Lcom/htc/widget/HtcDatePickerDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 233
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 235
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x2090040

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 236
    .local v2, view:Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcDatePickerDialog;->setView(Landroid/view/View;)V

    .line 238
    invoke-virtual {p0, v7}, Lcom/htc/widget/HtcDatePickerDialog;->setInverseBackgroundForced(Z)V

    .line 240
    const v3, 0x20200ef

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcDatePicker;

    iput-object v3, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    .line 241
    iget-object v3, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    invoke-virtual {v3, v7}, Lcom/htc/widget/HtcDatePicker;->setRepeatEnable(Z)V

    .line 242
    iput-boolean v7, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitDatePickerDialog:Z

    .line 245
    iget v3, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialYear:I

    iget v4, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialMonth:I

    iget v5, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialDay:I

    invoke-direct {p0, v3, v4, v5}, Lcom/htc/widget/HtcDatePickerDialog;->updateDateInternal(III)V

    .line 247
    iget-object v3, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    invoke-virtual {v3}, Lcom/htc/widget/HtcDatePicker;->requestFocus()Z

    .line 249
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;IIIIIZ)V
    .locals 6
    .parameter "context"
    .parameter "theme"
    .parameter "callBack"
    .parameter "yearStart"
    .parameter "yearEnd"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "repeatEnable"

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAlertDialog;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/htc/widget/HtcDatePickerDialog;->mHandler:Landroid/os/Handler;

    .line 64
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/widget/HtcDatePickerDialog;->isWithoutDayPicker:Z

    .line 319
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/widget/HtcDatePickerDialog;->isAutoUpdateTitle:Z

    .line 169
    iput-object p1, p0, Lcom/htc/widget/HtcDatePickerDialog;->mContext:Landroid/content/Context;

    .line 170
    iput-object p3, p0, Lcom/htc/widget/HtcDatePickerDialog;->mCallBack:Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;

    .line 171
    iput p6, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialYear:I

    .line 172
    iput p7, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialMonth:I

    .line 173
    iput p8, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialDay:I

    .line 174
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 175
    .local v1, symbols:Ljava/text/DateFormatSymbols;
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/HtcDatePickerDialog;->mWeekDays:[Ljava/lang/String;

    .line 176
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/HtcDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    .line 178
    iget v3, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialYear:I

    iget v4, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialMonth:I

    iget v5, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialDay:I

    invoke-direct {p0, v3, v4, v5}, Lcom/htc/widget/HtcDatePickerDialog;->updateTitle(III)V

    .line 180
    const v3, 0x104000a

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3, p0}, Lcom/htc/widget/HtcDatePickerDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 181
    const/high16 v3, 0x104

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v3, 0x0

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v4, v3}, Lcom/htc/widget/HtcDatePickerDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 184
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 186
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x2090040

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 187
    .local v2, view:Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcDatePickerDialog;->setView(Landroid/view/View;)V

    .line 189
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcDatePickerDialog;->setInverseBackgroundForced(Z)V

    .line 191
    const v3, 0x20200ef

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcDatePicker;

    iput-object v3, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    .line 192
    iget-object v3, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    invoke-virtual {v3, p4, p5}, Lcom/htc/widget/HtcDatePicker;->setYearRange(II)V

    .line 193
    iget-object v3, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    invoke-virtual {v3, p9}, Lcom/htc/widget/HtcDatePicker;->setRepeatEnable(Z)V

    .line 194
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitDatePickerDialog:Z

    .line 197
    iget v3, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialYear:I

    iget v4, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialMonth:I

    iget v5, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialDay:I

    invoke-direct {p0, v3, v4, v5}, Lcom/htc/widget/HtcDatePickerDialog;->updateDateInternal(III)V

    .line 199
    iget-object v3, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    invoke-virtual {v3}, Lcom/htc/widget/HtcDatePicker;->requestFocus()Z

    .line 201
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;III)V
    .locals 7
    .parameter "context"
    .parameter "callBack"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 144
    const v2, 0x10302ee

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/htc/widget/HtcDatePickerDialog;-><init>(Landroid/content/Context;ILcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;III)V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;IIIIIZ)V
    .locals 10
    .parameter "context"
    .parameter "callBack"
    .parameter "yearStart"
    .parameter "yearEnd"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "repeatEnable"

    .prologue
    .line 127
    const v2, 0x10302ee

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/htc/widget/HtcDatePickerDialog;-><init>(Landroid/content/Context;ILcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;IIIIIZ)V

    .line 129
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcDatePickerDialog;->setInverseBackgroundForced(Z)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;IIIILjava/lang/String;)V
    .locals 12
    .parameter "context"
    .parameter "callBack"
    .parameter "yearStart"
    .parameter "yearEnd"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dateOrder"

    .prologue
    .line 99
    const v4, 0x10302ee

    const/16 v10, 0x1e

    const/4 v11, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v2 .. v11}, Lcom/htc/widget/HtcDatePickerDialog;-><init>(Landroid/content/Context;ILcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;IIIIIZ)V

    .line 101
    iget-object v2, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    if-eqz v2, :cond_0

    .line 102
    iget-object v2, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcDatePicker;->setPickersOrder(Ljava/lang/String;)V

    .line 104
    :cond_0
    move/from16 v0, p5

    move/from16 v1, p6

    invoke-direct {p0, v0, v1}, Lcom/htc/widget/HtcDatePickerDialog;->updateTitleWithoutDay(II)V

    .line 105
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/widget/HtcDatePickerDialog;->isWithoutDayPicker:Z

    .line 106
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcDatePickerDialog;->setInverseBackgroundForced(Z)V

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/HtcDatePickerDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialYear:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/widget/HtcDatePickerDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialMonth:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/widget/HtcDatePickerDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialDay:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/widget/HtcDatePickerDialog;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcDatePickerDialog;->updateDateInternal(III)V

    return-void
.end method

.method private adjustDayNumber(III)V
    .locals 6
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 441
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 442
    .local v0, cal:Ljava/util/Calendar;
    const/4 v2, 0x1

    invoke-virtual {v0, p1, p2, v2}, Ljava/util/Calendar;->set(III)V

    .line 443
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    .line 445
    .local v1, max:I
    if-le p3, v1, :cond_0

    .line 446
    move p3, v1

    .line 449
    :cond_0
    iput p1, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialYear:I

    .line 450
    iput p2, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialMonth:I

    .line 451
    iput p3, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialDay:I

    .line 452
    iget-object v2, p0, Lcom/htc/widget/HtcDatePickerDialog;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/htc/widget/HtcDatePickerDialog$2;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcDatePickerDialog$2;-><init>(Lcom/htc/widget/HtcDatePickerDialog;)V

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 459
    return-void
.end method

.method private parseEventUsingCalendar(Ljava/lang/String;Ljava/util/Calendar;)Z
    .locals 13
    .parameter "timeInRfc3339"
    .parameter "calendar"

    .prologue
    const/16 v12, 0xe

    const/16 v4, 0xc

    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x0

    .line 367
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal RFC3339 format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_0
    const-string v10, ""

    .line 372
    .local v10, processStr:Ljava/lang/String;
    const-string v0, "T"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 373
    .local v8, indexOfT:I
    if-lez v8, :cond_2

    .line 374
    invoke-virtual {p1, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 380
    :goto_0
    const-string v0, "-"

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 388
    .local v11, splitStr:[Ljava/lang/String;
    array-length v9, v11

    .line 389
    .local v9, numOfItem:I
    const/4 v7, 0x0

    .line 390
    .local v7, hasYearInfo:Z
    if-ne v9, v6, :cond_3

    .line 391
    aget-object v0, v11, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v0, 0x1

    aget-object v0, v11, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    aget-object v0, v11, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object v0, p2

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 396
    invoke-virtual {p2, v12, v5}, Ljava/util/Calendar;->set(II)V

    .line 397
    const/4 v7, 0x1

    .line 411
    :cond_1
    :goto_1
    return v7

    .line 377
    .end local v7           #hasYearInfo:Z
    .end local v9           #numOfItem:I
    .end local v11           #splitStr:[Ljava/lang/String;
    :cond_2
    move-object v10, p1

    goto :goto_0

    .line 399
    .restart local v7       #hasYearInfo:Z
    .restart local v9       #numOfItem:I
    .restart local v11       #splitStr:[Ljava/lang/String;
    :cond_3
    const/4 v0, 0x4

    if-ne v9, v0, :cond_1

    .line 403
    const/16 v1, 0x7b2

    aget-object v0, v11, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    aget-object v0, v11, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object v0, p2

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 408
    invoke-virtual {p2, v12, v5}, Ljava/util/Calendar;->set(II)V

    .line 409
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private updateDate()V
    .locals 4

    .prologue
    .line 259
    iget-object v0, p0, Lcom/htc/widget/HtcDatePickerDialog;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/htc/widget/HtcDatePickerDialog$1;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcDatePickerDialog$1;-><init>(Lcom/htc/widget/HtcDatePickerDialog;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 295
    return-void
.end method

.method private updateDateInternal(III)V
    .locals 4
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    iget v1, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialYear:I

    iget v2, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialMonth:I

    iget v3, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialDay:I

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/htc/widget/HtcDatePicker;->init(IIILcom/htc/widget/HtcDatePicker$OnDateChangedListener;)V

    .line 254
    return-void
.end method

.method private updateTitle(III)V
    .locals 7
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    const/4 v6, 0x1

    .line 342
    iget-boolean v4, p0, Lcom/htc/widget/HtcDatePickerDialog;->isAutoUpdateTitle:Z

    if-nez v4, :cond_0

    .line 364
    :goto_0
    return-void

    .line 344
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 345
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 346
    .local v3, monthStr:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, dayStr:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 349
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 350
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, dateStr:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/widget/HtcDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-direct {p0, v0, v4}, Lcom/htc/widget/HtcDatePickerDialog;->parseEventUsingCalendar(Ljava/lang/String;Ljava/util/Calendar;)Z

    .line 354
    const-string v2, ""

    .line 355
    .local v2, format:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/widget/HtcDatePickerDialog;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_4

    .line 356
    iget-object v4, p0, Lcom/htc/widget/HtcDatePickerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "date_format"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 360
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 361
    const-string v2, "EE, MMM dd, yyyy"

    .line 363
    :cond_3
    iget-object v4, p0, Lcom/htc/widget/HtcDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-static {v2, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-super {p0, v4}, Lcom/htc/widget/HtcAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 358
    :cond_4
    const-string v4, "HtcDatePickerDialog"

    const-string v5, "mContext is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateTitleWithoutDay(II)V
    .locals 3
    .parameter "year"
    .parameter "month"

    .prologue
    .line 326
    iget-boolean v1, p0, Lcom/htc/widget/HtcDatePickerDialog;->isAutoUpdateTitle:Z

    if-nez v1, :cond_0

    .line 334
    :goto_0
    return-void

    .line 328
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/HtcDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 329
    iget-object v1, p0, Lcom/htc/widget/HtcDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 330
    const-string v0, ""

    .line 331
    .local v0, format:Ljava/lang/String;
    const-string v0, "MMM, yyyy"

    .line 333
    iget-object v1, p0, Lcom/htc/widget/HtcDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/widget/HtcAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/htc/widget/HtcDatePickerDialog;->mCallBack:Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcDatePicker;->clearFocus()V

    .line 301
    iget-object v0, p0, Lcom/htc/widget/HtcDatePickerDialog;->mCallBack:Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;

    iget-object v1, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    iget-object v2, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    invoke-virtual {v2}, Lcom/htc/widget/HtcDatePicker;->getCurrentYear()I

    move-result v2

    iget-object v3, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    invoke-virtual {v3}, Lcom/htc/widget/HtcDatePicker;->getCurrentMonth()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    invoke-virtual {v4}, Lcom/htc/widget/HtcDatePicker;->getCurrentDay()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;->onDateSet(Lcom/htc/widget/HtcDatePicker;III)V

    .line 304
    :cond_0
    return-void
.end method

.method public onDataSet(Lcom/htc/widget/HtcNumberPicker;I)V
    .locals 3
    .parameter "target"
    .parameter "data"

    .prologue
    .line 462
    const-string v0, "HtcDatePickerDialog"

    const-string v1, "onDataSet >>> "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    if-eqz p1, :cond_1

    .line 465
    iget-object v0, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcDatePicker;->getCurrentYear()I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcDatePicker;->getCurrentMonth()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    invoke-virtual {v2}, Lcom/htc/widget/HtcDatePicker;->getCurrentDay()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/widget/HtcDatePickerDialog;->adjustDayNumber(III)V

    .line 468
    iget v0, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialYear:I

    iget-object v1, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcDatePicker;->getCurrentYear()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialMonth:I

    iget-object v1, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcDatePicker;->getCurrentDay()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialDay:I

    iget-object v1, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcDatePicker;->getCurrentDay()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 469
    :cond_0
    iget-boolean v0, p0, Lcom/htc/widget/HtcDatePickerDialog;->isWithoutDayPicker:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcDatePicker;->getCurrentYear()I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcDatePicker;->getCurrentMonth()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    invoke-virtual {v2}, Lcom/htc/widget/HtcDatePicker;->getCurrentDay()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/widget/HtcDatePickerDialog;->updateTitle(III)V

    .line 474
    :cond_1
    :goto_0
    return-void

    .line 470
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    invoke-virtual {v0}, Lcom/htc/widget/HtcDatePicker;->getCurrentYear()I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    invoke-virtual {v1}, Lcom/htc/widget/HtcDatePicker;->getCurrentMonth()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/htc/widget/HtcDatePickerDialog;->updateTitleWithoutDay(II)V

    goto :goto_0
.end method

.method public onDateChanged(Lcom/htc/widget/HtcDatePicker;III)V
    .locals 1
    .parameter "view"
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 435
    iget-boolean v0, p0, Lcom/htc/widget/HtcDatePickerDialog;->isWithoutDayPicker:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p2, p3, p4}, Lcom/htc/widget/HtcDatePickerDialog;->updateTitle(III)V

    .line 437
    :goto_0
    return-void

    .line 436
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/htc/widget/HtcDatePickerDialog;->updateTitleWithoutDay(II)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 425
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 426
    const-string/jumbo v3, "year"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 427
    .local v2, year:I
    const-string v3, "month"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 428
    .local v1, month:I
    const-string v3, "day"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 429
    .local v0, day:I
    iget-object v3, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    invoke-virtual {v3, v2, v1, v0, p0}, Lcom/htc/widget/HtcDatePicker;->init(IIILcom/htc/widget/HtcDatePicker$OnDateChangedListener;)V

    .line 431
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 416
    invoke-super {p0}, Lcom/htc/widget/HtcAlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 417
    .local v0, state:Landroid/os/Bundle;
    const-string/jumbo v1, "year"

    iget-object v2, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    invoke-virtual {v2}, Lcom/htc/widget/HtcDatePicker;->getCurrentYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 418
    const-string v1, "month"

    iget-object v2, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    invoke-virtual {v2}, Lcom/htc/widget/HtcDatePicker;->getCurrentMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 419
    const-string v1, "day"

    iget-object v2, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    invoke-virtual {v2}, Lcom/htc/widget/HtcDatePicker;->getCurrentDay()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 420
    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 322
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcDatePickerDialog;->isAutoUpdateTitle:Z

    .line 323
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 324
    return-void
.end method

.method public updateDate(III)V
    .locals 2
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 308
    iput p1, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialYear:I

    .line 309
    iput p2, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialMonth:I

    .line 310
    iput p3, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialDay:I

    .line 312
    iget-object v0, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    iget v1, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialYear:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcDatePicker;->setCurrentYear(I)V

    .line 313
    iget-object v0, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    iget v1, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialMonth:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcDatePicker;->setCurrentMonth(I)V

    .line 314
    iget-object v0, p0, Lcom/htc/widget/HtcDatePickerDialog;->mDatePicker:Lcom/htc/widget/HtcDatePicker;

    iget v1, p0, Lcom/htc/widget/HtcDatePickerDialog;->mInitialDay:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcDatePicker;->setCurrentDay(I)V

    .line 316
    add-int/lit8 v0, p2, -0x1

    invoke-direct {p0, p1, v0, p3}, Lcom/htc/widget/HtcDatePickerDialog;->updateTitle(III)V

    .line 318
    return-void
.end method
