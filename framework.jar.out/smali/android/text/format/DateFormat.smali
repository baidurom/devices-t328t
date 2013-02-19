.class public Landroid/text/format/DateFormat;
.super Ljava/lang/Object;
.source "DateFormat.java"


# static fields
.field public static final AM_PM:C = 'a'

.field public static final CAPITAL_AM_PM:C = 'A'

.field public static final DATE:C = 'd'

.field public static final DAY:C = 'E'

.field public static final HOUR:C = 'h'

.field public static final HOUR_OF_DAY:C = 'k'

.field public static final MINUTE:C = 'm'

.field public static final MONTH:C = 'M'

.field public static final QUOTE:C = '\''

.field public static final SECONDS:C = 's'

.field public static final TIME_ZONE:C = 'z'

.field public static final YEAR:C = 'y'

.field private static sIs24Hour:Z

.field private static sIs24HourLocale:Ljava/util/Locale;

.field private static final sLocaleLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 194
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/format/DateFormat;->sLocaleLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final appendQuotedText(Landroid/text/SpannableStringBuilder;II)I
    .locals 4
    .parameter "s"
    .parameter "i"
    .parameter "len"

    .prologue
    const/16 v3, 0x27

    .line 663
    add-int/lit8 v2, p1, 0x1

    if-ge v2, p2, :cond_1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    .line 664
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 665
    const/4 v1, 0x1

    .line 696
    :cond_0
    :goto_0
    return v1

    .line 668
    :cond_1
    const/4 v1, 0x0

    .line 671
    .local v1, count:I
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 672
    add-int/lit8 p2, p2, -0x1

    .line 674
    :goto_1
    if-ge p1, p2, :cond_0

    .line 675
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    .line 677
    .local v0, c:C
    if-ne v0, v3, :cond_3

    .line 679
    add-int/lit8 v2, p1, 0x1

    if-ge v2, p2, :cond_2

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_2

    .line 681
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 682
    add-int/lit8 p2, p2, -0x1

    .line 683
    add-int/lit8 v1, v1, 0x1

    .line 684
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 687
    :cond_2
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 691
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 692
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static final format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;
    .locals 1
    .parameter "inFormat"
    .parameter "inTimeInMillis"

    .prologue
    .line 408
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static final format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;
    .locals 20
    .parameter "inFormat"
    .parameter "inDate"

    .prologue
    .line 434
    new-instance v14, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 441
    .local v14, s:Landroid/text/SpannableStringBuilder;
    const/4 v12, 0x0

    .line 442
    .local v12, needExtendFlag:Z
    const-string v6, ""

    .line 443
    .local v6, extendReplacementDay:Ljava/lang/String;
    const-string v7, ""

    .line 445
    .local v7, extendReplacementYear:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 446
    .local v9, formatPattern:Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 447
    const/16 v17, -0x1

    const-string v18, "MMM"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    const/4 v12, 0x0

    .line 449
    :cond_0
    :goto_0
    if-eqz v12, :cond_1

    .line 450
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    .line 451
    .local v5, currLanguage:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 452
    const/4 v12, 0x0

    .line 474
    .end local v5           #currLanguage:Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v11

    .line 476
    .local v11, len:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    if-ge v10, v11, :cond_15

    .line 479
    const/4 v4, 0x1

    .line 480
    .local v4, count:I
    invoke-virtual {v14, v10}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    .line 482
    .local v3, c:I
    const/4 v8, 0x0

    .line 484
    .local v8, extra_skip_count:I
    const/16 v17, 0x27

    move/from16 v0, v17

    if-ne v3, v0, :cond_b

    .line 485
    invoke-static {v14, v10, v11}, Landroid/text/format/DateFormat;->appendQuotedText(Landroid/text/SpannableStringBuilder;II)I

    move-result v4

    .line 486
    invoke-virtual {v14}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    .line 476
    :cond_2
    :goto_3
    add-int/2addr v10, v4

    goto :goto_2

    .line 447
    .end local v3           #c:I
    .end local v4           #count:I
    .end local v8           #extra_skip_count:I
    .end local v10           #i:I
    .end local v11           #len:I
    :cond_3
    const/4 v12, 0x1

    goto :goto_0

    .line 454
    .restart local v5       #currLanguage:Ljava/lang/String;
    :cond_4
    sget-object v17, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 455
    const/4 v12, 0x0

    goto :goto_1

    .line 456
    :cond_5
    sget-object v17, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_6

    sget-object v17, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 458
    :cond_6
    const-string v6, " \u65e5"

    .line 459
    const-string v7, " \u5e74"

    goto :goto_1

    .line 460
    :cond_7
    sget-object v17, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_8

    sget-object v17, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 462
    :cond_8
    const-string/jumbo v6, "\u65e5"

    .line 463
    const-string/jumbo v7, "\u5e74"

    goto :goto_1

    .line 464
    :cond_9
    sget-object v17, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_a

    sget-object v17, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 466
    :cond_a
    const-string/jumbo v6, "\uc77c"

    .line 467
    const-string/jumbo v7, "\ub144"

    goto/16 :goto_1

    .line 490
    .end local v5           #currLanguage:Ljava/lang/String;
    .restart local v3       #c:I
    .restart local v4       #count:I
    .restart local v8       #extra_skip_count:I
    .restart local v10       #i:I
    .restart local v11       #len:I
    :cond_b
    :goto_4
    add-int v17, v10, v4

    move/from16 v0, v17

    if-ge v0, v11, :cond_c

    add-int v17, v10, v4

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    if-ne v0, v3, :cond_c

    .line 491
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 496
    :cond_c
    sparse-switch v3, :sswitch_data_0

    .line 590
    const/4 v13, 0x0

    .line 594
    .local v13, replacement:Ljava/lang/String;
    :cond_d
    :goto_5
    if-eqz v13, :cond_2

    .line 596
    if-lez v8, :cond_e

    .line 597
    add-int v17, v10, v4

    add-int v18, v10, v4

    add-int v18, v18, v8

    const-string v19, ""

    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v14, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 600
    :cond_e
    add-int v17, v10, v4

    move/from16 v0, v17

    invoke-virtual {v14, v10, v0, v13}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 601
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v4

    .line 602
    invoke-virtual {v14}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    goto/16 :goto_3

    .line 498
    .end local v13           #replacement:Ljava/lang/String;
    :sswitch_0
    const/16 v17, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v13

    .line 499
    .restart local v13       #replacement:Ljava/lang/String;
    goto :goto_5

    .line 503
    .end local v13           #replacement:Ljava/lang/String;
    :sswitch_1
    const/16 v17, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v13

    .line 504
    .restart local v13       #replacement:Ljava/lang/String;
    goto :goto_5

    .line 507
    .end local v13           #replacement:Ljava/lang/String;
    :sswitch_2
    const/16 v17, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v17

    move/from16 v0, v17

    invoke-static {v0, v4}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v13

    .line 510
    .restart local v13       #replacement:Ljava/lang/String;
    if-eqz v12, :cond_f

    .line 511
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 516
    :cond_f
    add-int v17, v10, v4

    add-int v16, v17, v8

    .line 517
    .local v16, temp_index:I
    :goto_6
    move/from16 v0, v16

    if-ge v0, v11, :cond_d

    .line 518
    const/16 v17, 0x65e5

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_10

    const v17, 0xc77c

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 519
    :cond_10
    add-int/lit8 v8, v8, 0x1

    .line 520
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 530
    .end local v13           #replacement:Ljava/lang/String;
    .end local v16           #temp_index:I
    :sswitch_3
    const/16 v17, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 531
    .local v15, temp:I
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ge v4, v0, :cond_11

    const/16 v17, 0x14

    :goto_7
    move/from16 v0, v17

    invoke-static {v15, v0}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v13

    .line 535
    .restart local v13       #replacement:Ljava/lang/String;
    goto/16 :goto_5

    .line 531
    .end local v13           #replacement:Ljava/lang/String;
    :cond_11
    const/16 v17, 0xa

    goto :goto_7

    .line 538
    .end local v15           #temp:I
    :sswitch_4
    const/16 v17, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 540
    .restart local v15       #temp:I
    if-nez v15, :cond_12

    .line 541
    const/16 v15, 0xc

    .line 543
    :cond_12
    invoke-static {v15, v4}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v13

    .line 544
    .restart local v13       #replacement:Ljava/lang/String;
    goto/16 :goto_5

    .line 547
    .end local v13           #replacement:Ljava/lang/String;
    .end local v15           #temp:I
    :sswitch_5
    const/16 v17, 0xb

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v17

    move/from16 v0, v17

    invoke-static {v0, v4}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v13

    .line 548
    .restart local v13       #replacement:Ljava/lang/String;
    goto/16 :goto_5

    .line 551
    .end local v13           #replacement:Ljava/lang/String;
    :sswitch_6
    const/16 v17, 0xc

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v17

    move/from16 v0, v17

    invoke-static {v0, v4}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v13

    .line 552
    .restart local v13       #replacement:Ljava/lang/String;
    goto/16 :goto_5

    .line 555
    .end local v13           #replacement:Ljava/lang/String;
    :sswitch_7
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/text/format/DateFormat;->getMonthString(Ljava/util/Calendar;I)Ljava/lang/String;

    move-result-object v13

    .line 556
    .restart local v13       #replacement:Ljava/lang/String;
    goto/16 :goto_5

    .line 559
    .end local v13           #replacement:Ljava/lang/String;
    :sswitch_8
    const/16 v17, 0xd

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v17

    move/from16 v0, v17

    invoke-static {v0, v4}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v13

    .line 560
    .restart local v13       #replacement:Ljava/lang/String;
    goto/16 :goto_5

    .line 563
    .end local v13           #replacement:Ljava/lang/String;
    :sswitch_9
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/text/format/DateFormat;->getTimeZoneString(Ljava/util/Calendar;I)Ljava/lang/String;

    move-result-object v13

    .line 564
    .restart local v13       #replacement:Ljava/lang/String;
    goto/16 :goto_5

    .line 567
    .end local v13           #replacement:Ljava/lang/String;
    :sswitch_a
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/text/format/DateFormat;->getYearString(Ljava/util/Calendar;I)Ljava/lang/String;

    move-result-object v13

    .line 570
    .restart local v13       #replacement:Ljava/lang/String;
    if-eqz v12, :cond_13

    .line 571
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 576
    :cond_13
    add-int v17, v10, v4

    add-int v16, v17, v8

    .line 577
    .restart local v16       #temp_index:I
    :goto_8
    move/from16 v0, v16

    if-ge v0, v11, :cond_d

    .line 578
    const/16 v17, 0x5e74

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_14

    const v17, 0xb144

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 579
    :cond_14
    add-int/lit8 v8, v8, 0x1

    .line 580
    add-int/lit8 v16, v16, 0x1

    goto :goto_8

    .line 606
    .end local v3           #c:I
    .end local v4           #count:I
    .end local v8           #extra_skip_count:I
    .end local v13           #replacement:Ljava/lang/String;
    .end local v16           #temp_index:I
    :cond_15
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/text/Spanned;

    move/from16 v17, v0

    if-eqz v17, :cond_16

    .line 607
    new-instance v17, Landroid/text/SpannedString;

    move-object/from16 v0, v17

    invoke-direct {v0, v14}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 609
    :goto_9
    return-object v17

    :cond_16
    invoke-virtual {v14}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto :goto_9

    .line 496
    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_1
        0x45 -> :sswitch_3
        0x4d -> :sswitch_7
        0x61 -> :sswitch_0
        0x64 -> :sswitch_2
        0x68 -> :sswitch_4
        0x6b -> :sswitch_5
        0x6d -> :sswitch_6
        0x73 -> :sswitch_8
        0x79 -> :sswitch_a
        0x7a -> :sswitch_9
    .end sparse-switch
.end method

.method public static final format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "inFormat"
    .parameter "inDate"

    .prologue
    .line 419
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 421
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 423
    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method private static final formatZoneOffset(II)Ljava/lang/String;
    .locals 6
    .parameter "offset"
    .parameter "count"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 639
    div-int/lit16 p0, p0, 0x3e8

    .line 640
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 642
    .local v2, tb:Ljava/lang/StringBuilder;
    if-gez p0, :cond_0

    .line 643
    const-string v3, "-"

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    neg-int p0, p0

    .line 649
    :goto_0
    div-int/lit16 v0, p0, 0xe10

    .line 650
    .local v0, hours:I
    rem-int/lit16 v3, p0, 0xe10

    div-int/lit8 v1, v3, 0x3c

    .line 652
    .local v1, minutes:I
    invoke-static {v0, v5}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    invoke-static {v1, v5}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 646
    .end local v0           #hours:I
    .end local v1           #minutes:I
    :cond_0
    const-string v3, "+"

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static final getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 3
    .parameter "context"

    .prologue
    .line 271
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, value:Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v1

    return-object v1
.end method

.method public static getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;
    .locals 2
    .parameter "context"
    .parameter "value"

    .prologue
    .line 288
    invoke-static {p0, p1}, Landroid/text/format/DateFormat;->getDateFormatStringForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, format:Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static final getDateFormatOrder(Landroid/content/Context;)[C
    .locals 14
    .parameter "context"

    .prologue
    const/16 v13, 0x79

    const/16 v12, 0x64

    const/16 v11, 0x4d

    .line 364
    const/4 v10, 0x3

    new-array v8, v10, [C

    fill-array-data v8, :array_0

    .line 365
    .local v8, order:[C
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 366
    .local v9, value:Ljava/lang/String;
    const/4 v6, 0x0

    .line 367
    .local v6, index:I
    const/4 v2, 0x0

    .line 368
    .local v2, foundDate:Z
    const/4 v3, 0x0

    .line 369
    .local v3, foundMonth:Z
    const/4 v4, 0x0

    .line 371
    .local v4, foundYear:Z
    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, arr$:[C
    array-length v7, v0

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v7, :cond_3

    aget-char v1, v0, v5

    .line 372
    .local v1, c:C
    if-nez v2, :cond_0

    if-ne v1, v12, :cond_0

    .line 373
    const/4 v2, 0x1

    .line 374
    aput-char v12, v8, v6

    .line 375
    add-int/lit8 v6, v6, 0x1

    .line 378
    :cond_0
    if-nez v3, :cond_1

    if-ne v1, v11, :cond_1

    .line 379
    const/4 v3, 0x1

    .line 380
    aput-char v11, v8, v6

    .line 381
    add-int/lit8 v6, v6, 0x1

    .line 384
    :cond_1
    if-nez v4, :cond_2

    if-ne v1, v13, :cond_2

    .line 385
    const/4 v4, 0x1

    .line 386
    aput-char v13, v8, v6

    .line 387
    add-int/lit8 v6, v6, 0x1

    .line 371
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 390
    .end local v1           #c:C
    :cond_3
    return-object v8

    .line 364
    nop

    :array_0
    .array-data 0x2
        0x64t 0x0t
        0x4dt 0x0t
        0x79t 0x0t
    .end array-data
.end method

.method private static getDateFormatString(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 394
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, value:Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->getDateFormatStringForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getDateFormatStringForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "value"

    .prologue
    const/4 v6, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 294
    if-eqz p1, :cond_5

    .line 295
    const/16 v5, 0x4d

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 296
    .local v1, month:I
    const/16 v5, 0x64

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 297
    .local v0, day:I
    const/16 v5, 0x79

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 299
    .local v4, year:I
    if-ltz v1, :cond_5

    if-ltz v0, :cond_5

    if-ltz v4, :cond_5

    .line 300
    const v5, 0x1040094

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 301
    .local v2, template:Ljava/lang/String;
    if-ge v4, v1, :cond_1

    if-ge v4, v0, :cond_1

    .line 302
    if-ge v1, v0, :cond_0

    .line 303
    new-array v5, v6, [Ljava/lang/Object;

    const-string/jumbo v6, "yyyy"

    aput-object v6, v5, v7

    const-string v6, "MM"

    aput-object v6, v5, v8

    const-string v6, "dd"

    aput-object v6, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v3, p1

    .line 331
    .end local v0           #day:I
    .end local v1           #month:I
    .end local v2           #template:Ljava/lang/String;
    .end local v4           #year:I
    .end local p1
    .local v3, value:Ljava/lang/String;
    :goto_1
    return-object v3

    .line 305
    .end local v3           #value:Ljava/lang/String;
    .restart local v0       #day:I
    .restart local v1       #month:I
    .restart local v2       #template:Ljava/lang/String;
    .restart local v4       #year:I
    .restart local p1
    :cond_0
    new-array v5, v6, [Ljava/lang/Object;

    const-string/jumbo v6, "yyyy"

    aput-object v6, v5, v7

    const-string v6, "dd"

    aput-object v6, v5, v8

    const-string v6, "MM"

    aput-object v6, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 307
    :cond_1
    if-ge v1, v0, :cond_3

    .line 308
    if-ge v0, v4, :cond_2

    .line 309
    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "MM"

    aput-object v6, v5, v7

    const-string v6, "dd"

    aput-object v6, v5, v8

    const-string/jumbo v6, "yyyy"

    aput-object v6, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 311
    :cond_2
    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "MM"

    aput-object v6, v5, v7

    const-string/jumbo v6, "yyyy"

    aput-object v6, v5, v8

    const-string v6, "dd"

    aput-object v6, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 314
    :cond_3
    if-ge v1, v4, :cond_4

    .line 315
    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "dd"

    aput-object v6, v5, v7

    const-string v6, "MM"

    aput-object v6, v5, v8

    const-string/jumbo v6, "yyyy"

    aput-object v6, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 317
    :cond_4
    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "dd"

    aput-object v6, v5, v7

    const-string/jumbo v6, "yyyy"

    aput-object v6, v5, v8

    const-string v6, "MM"

    aput-object v6, v5, v9

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 330
    .end local v0           #day:I
    .end local v1           #month:I
    .end local v2           #template:Ljava/lang/String;
    .end local v4           #year:I
    :cond_5
    const v5, 0x1040093

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    move-object v3, p1

    .line 331
    .end local p1
    .restart local v3       #value:Ljava/lang/String;
    goto :goto_1
.end method

.method public static final getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 1
    .parameter "context"

    .prologue
    .line 341
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static final getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 1
    .parameter "context"

    .prologue
    .line 351
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method private static final getMonthString(Ljava/util/Calendar;I)Ljava/lang/String;
    .locals 2
    .parameter "inDate"
    .parameter "count"

    .prologue
    .line 613
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 615
    .local v0, month:I
    const/4 v1, 0x4

    if-lt p1, v1, :cond_0

    .line 616
    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v1

    .line 621
    :goto_0
    return-object v1

    .line 617
    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 618
    const/16 v1, 0x14

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 621
    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-static {v1, p1}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static final getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 4
    .parameter "context"

    .prologue
    .line 251
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 254
    .local v0, b24:Z
    if-eqz v0, :cond_0

    .line 255
    const v1, 0x1040091

    .line 260
    .local v1, res:I
    :goto_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 257
    .end local v1           #res:I
    :cond_0
    const v1, 0x1040090

    .restart local v1       #res:I
    goto :goto_0
.end method

.method private static final getTimeZoneString(Ljava/util/Calendar;I)Ljava/lang/String;
    .locals 5
    .parameter "inDate"
    .parameter "count"

    .prologue
    const/16 v4, 0x10

    const/4 v2, 0x0

    .line 626
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 628
    .local v1, tz:Ljava/util/TimeZone;
    const/4 v3, 0x2

    if-ge p1, v3, :cond_0

    .line 629
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xf

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2, p1}, Landroid/text/format/DateFormat;->formatZoneOffset(II)Ljava/lang/String;

    move-result-object v2

    .line 634
    :goto_0
    return-object v2

    .line 633
    :cond_0
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 634
    .local v0, dst:Z
    :goto_1
    invoke-virtual {v1, v0, v2}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .end local v0           #dst:Z
    :cond_1
    move v0, v2

    .line 633
    goto :goto_1
.end method

.method private static final getYearString(Ljava/util/Calendar;I)Ljava/lang/String;
    .locals 3
    .parameter "inDate"
    .parameter "count"

    .prologue
    const/4 v2, 0x2

    .line 658
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 659
    .local v0, year:I
    if-gt p1, v2, :cond_0

    rem-int/lit8 v1, v0, 0x64

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->zeroPad(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static is24HourFormat(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x1

    .line 205
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "time_12_24"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 208
    .local v5, value:Ljava/lang/String;
    if-nez v5, :cond_1

    .line 209
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v1, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 211
    .local v1, locale:Ljava/util/Locale;
    sget-object v7, Landroid/text/format/DateFormat;->sLocaleLock:Ljava/lang/Object;

    monitor-enter v7

    .line 212
    :try_start_0
    sget-object v8, Landroid/text/format/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    if-eqz v8, :cond_0

    sget-object v8, Landroid/text/format/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    invoke-virtual {v8, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 213
    sget-boolean v0, Landroid/text/format/DateFormat;->sIs24Hour:Z

    monitor-exit v7

    .line 241
    .end local v1           #locale:Ljava/util/Locale;
    :goto_0
    return v0

    .line 215
    .restart local v1       #locale:Ljava/util/Locale;
    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    invoke-static {v0, v1}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v2

    .line 221
    .local v2, natural:Ljava/text/DateFormat;
    instance-of v7, v2, Ljava/text/SimpleDateFormat;

    if-eqz v7, :cond_3

    move-object v4, v2

    .line 222
    check-cast v4, Ljava/text/SimpleDateFormat;

    .line 223
    .local v4, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v4}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v3

    .line 225
    .local v3, pattern:Ljava/lang/String;
    const/16 v7, 0x48

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_2

    .line 226
    const-string v5, "24"

    .line 234
    .end local v3           #pattern:Ljava/lang/String;
    .end local v4           #sdf:Ljava/text/SimpleDateFormat;
    :goto_1
    sget-object v8, Landroid/text/format/DateFormat;->sLocaleLock:Ljava/lang/Object;

    monitor-enter v8

    .line 235
    :try_start_1
    sput-object v1, Landroid/text/format/DateFormat;->sIs24HourLocale:Ljava/util/Locale;

    .line 236
    const-string v7, "12"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    move v7, v0

    :goto_2
    sput-boolean v7, Landroid/text/format/DateFormat;->sIs24Hour:Z

    .line 237
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 240
    .end local v1           #locale:Ljava/util/Locale;
    .end local v2           #natural:Ljava/text/DateFormat;
    :cond_1
    if-eqz v5, :cond_5

    const-string v7, "12"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 241
    .local v0, b24:Z
    :goto_3
    goto :goto_0

    .line 215
    .end local v0           #b24:Z
    .restart local v1       #locale:Ljava/util/Locale;
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 228
    .restart local v2       #natural:Ljava/text/DateFormat;
    .restart local v3       #pattern:Ljava/lang/String;
    .restart local v4       #sdf:Ljava/text/SimpleDateFormat;
    :cond_2
    const-string v5, "12"

    goto :goto_1

    .line 231
    .end local v3           #pattern:Ljava/lang/String;
    .end local v4           #sdf:Ljava/text/SimpleDateFormat;
    :cond_3
    const-string v5, "12"

    goto :goto_1

    :cond_4
    move v7, v6

    .line 236
    goto :goto_2

    .line 237
    :catchall_1
    move-exception v6

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6

    .end local v1           #locale:Ljava/util/Locale;
    .end local v2           #natural:Ljava/text/DateFormat;
    :cond_5
    move v0, v6

    .line 240
    goto :goto_3
.end method

.method private static final zeroPad(II)Ljava/lang/String;
    .locals 6
    .parameter "inValue"
    .parameter "inMinDigits"

    .prologue
    .line 700
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 702
    .local v2, val:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, p1, :cond_1

    .line 703
    new-array v0, p1, [C

    .line 705
    .local v0, buf:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 706
    const/16 v3, 0x30

    aput-char v3, v0, v1

    .line 705
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 708
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v5, p1, v5

    invoke-virtual {v2, v3, v4, v0, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 709
    new-instance v2, Ljava/lang/String;

    .end local v2           #val:Ljava/lang/String;
    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    .line 711
    .end local v0           #buf:[C
    .end local v1           #i:I
    .restart local v2       #val:Ljava/lang/String;
    :cond_1
    return-object v2
.end method
