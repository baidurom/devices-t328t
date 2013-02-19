.class public Lcom/htc/weather/StateResources;
.super Ljava/lang/Object;
.source "StateResources.java"


# instance fields
.field private final RESOURCE_PACKAGENAME:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private bInit:Z

.field private conditions:[Ljava/lang/String;

.field private mRes:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "StateResources"

    iput-object v0, p0, Lcom/htc/weather/StateResources;->TAG:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/weather/StateResources;->bInit:Z

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    .line 24
    const-string v0, "com.htc"

    iput-object v0, p0, Lcom/htc/weather/StateResources;->RESOURCE_PACKAGENAME:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public Huafeng2ACCU(I)I
    .locals 1
    .parameter "conditionId"

    .prologue
    .line 592
    const/4 v0, 0x0

    .line 593
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 703
    :goto_0
    return v0

    .line 595
    :pswitch_0
    const/4 v0, 0x1

    .line 596
    goto :goto_0

    .line 598
    :pswitch_1
    const/4 v0, 0x6

    .line 599
    goto :goto_0

    .line 601
    :pswitch_2
    const/16 v0, 0x8

    .line 602
    goto :goto_0

    .line 604
    :pswitch_3
    const/16 v0, 0x12

    .line 605
    goto :goto_0

    .line 607
    :pswitch_4
    const/16 v0, 0xf

    .line 608
    goto :goto_0

    .line 610
    :pswitch_5
    const/16 v0, 0x33

    .line 611
    goto :goto_0

    .line 613
    :pswitch_6
    const/16 v0, 0x1d

    .line 614
    goto :goto_0

    .line 616
    :pswitch_7
    const/16 v0, 0xe

    .line 617
    goto :goto_0

    .line 619
    :pswitch_8
    const/16 v0, 0xd

    .line 620
    goto :goto_0

    .line 622
    :pswitch_9
    const/16 v0, 0x12

    .line 623
    goto :goto_0

    .line 625
    :pswitch_a
    const/16 v0, 0xf

    .line 626
    goto :goto_0

    .line 628
    :pswitch_b
    const/16 v0, 0x16

    .line 629
    goto :goto_0

    .line 631
    :pswitch_c
    const/16 v0, 0x16

    .line 632
    goto :goto_0

    .line 634
    :pswitch_d
    const/16 v0, 0x17

    .line 635
    goto :goto_0

    .line 637
    :pswitch_e
    const/16 v0, 0x15

    .line 638
    goto :goto_0

    .line 640
    :pswitch_f
    const/16 v0, 0x13

    .line 641
    goto :goto_0

    .line 643
    :pswitch_10
    const/16 v0, 0x16

    .line 644
    goto :goto_0

    .line 646
    :pswitch_11
    const/16 v0, 0x16

    .line 647
    goto :goto_0

    .line 649
    :pswitch_12
    const/16 v0, 0xb

    .line 650
    goto :goto_0

    .line 652
    :pswitch_13
    const/16 v0, 0x1a

    .line 653
    goto :goto_0

    .line 655
    :pswitch_14
    const/16 v0, 0x34

    .line 656
    goto :goto_0

    .line 658
    :pswitch_15
    const/16 v0, 0xd

    .line 659
    goto :goto_0

    .line 661
    :pswitch_16
    const/16 v0, 0xf

    .line 662
    goto :goto_0

    .line 664
    :pswitch_17
    const/16 v0, 0xf

    .line 665
    goto :goto_0

    .line 667
    :pswitch_18
    const/16 v0, 0xf

    .line 668
    goto :goto_0

    .line 670
    :pswitch_19
    const/16 v0, 0xf

    .line 671
    goto :goto_0

    .line 673
    :pswitch_1a
    const/16 v0, 0x13

    .line 674
    goto :goto_0

    .line 676
    :pswitch_1b
    const/16 v0, 0x16

    .line 677
    goto :goto_0

    .line 679
    :pswitch_1c
    const/16 v0, 0x16

    .line 680
    goto :goto_0

    .line 682
    :pswitch_1d
    const/16 v0, 0x35

    .line 683
    goto :goto_0

    .line 685
    :pswitch_1e
    const/16 v0, 0x34

    .line 686
    goto :goto_0

    .line 688
    :pswitch_1f
    const/16 v0, 0x34

    .line 689
    goto :goto_0

    .line 691
    :pswitch_20
    const/16 v0, 0x20

    .line 692
    goto :goto_0

    .line 694
    :pswitch_21
    const/16 v0, 0x36

    .line 695
    goto :goto_0

    .line 697
    :pswitch_22
    const/16 v0, 0x13

    .line 698
    goto :goto_0

    .line 700
    :pswitch_23
    const/16 v0, 0xb

    goto :goto_0

    .line 593
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
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
    .end packed-switch
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/weather/StateResources;->bInit:Z

    .line 150
    iput-object v1, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    .line 151
    iput-object v1, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    .line 152
    return-void
.end method

.method public getConditionIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "conditionId"

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-virtual {p0}, Lcom/htc/weather/StateResources;->isReady()Z

    move-result v3

    if-nez v3, :cond_0

    .line 69
    :goto_0
    return-object v2

    .line 64
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/weather/StateResources;->getConditionResourceId(I)I

    move-result v1

    .line 65
    .local v1, resId:I
    iget-object v3, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 66
    .end local v1           #resId:I
    :catch_0
    move-exception v0

    .line 67
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public getConditionIconBitmap(I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "conditionId"

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/htc/weather/StateResources;->isReady()Z

    move-result v2

    if-nez v2, :cond_0

    .line 74
    const/4 v0, 0x0

    .line 79
    :goto_0
    return-object v0

    .line 77
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/weather/StateResources;->getConditionResourceId(I)I

    move-result v1

    .line 78
    .local v1, resId:I
    iget-object v2, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 79
    .local v0, bmp:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public getConditionResourceId(I)I
    .locals 1
    .parameter "conditionId"

    .prologue
    const v0, 0x2080372

    .line 281
    packed-switch p1, :pswitch_data_0

    .line 375
    :goto_0
    :pswitch_0
    return v0

    .line 283
    :pswitch_1
    const v0, 0x208036c

    goto :goto_0

    .line 285
    :pswitch_2
    const v0, 0x208036d

    goto :goto_0

    .line 287
    :pswitch_3
    const v0, 0x208036e

    goto :goto_0

    .line 289
    :pswitch_4
    const v0, 0x208036f

    goto :goto_0

    .line 291
    :pswitch_5
    const v0, 0x2080370

    goto :goto_0

    .line 293
    :pswitch_6
    const v0, 0x2080371

    goto :goto_0

    .line 297
    :pswitch_7
    const v0, 0x2080373

    goto :goto_0

    .line 300
    :pswitch_8
    const v0, 0x2080374

    goto :goto_0

    .line 302
    :pswitch_9
    const v0, 0x2080375

    goto :goto_0

    .line 304
    :pswitch_a
    const v0, 0x2080376

    goto :goto_0

    .line 306
    :pswitch_b
    const v0, 0x2080377

    goto :goto_0

    .line 308
    :pswitch_c
    const v0, 0x2080378

    goto :goto_0

    .line 310
    :pswitch_d
    const v0, 0x2080379

    goto :goto_0

    .line 312
    :pswitch_e
    const v0, 0x208037a

    goto :goto_0

    .line 314
    :pswitch_f
    const v0, 0x208037b

    goto :goto_0

    .line 316
    :pswitch_10
    const v0, 0x208037c

    goto :goto_0

    .line 318
    :pswitch_11
    const v0, 0x208037d

    goto :goto_0

    .line 320
    :pswitch_12
    const v0, 0x208037e

    goto :goto_0

    .line 322
    :pswitch_13
    const v0, 0x208037f

    goto :goto_0

    .line 324
    :pswitch_14
    const v0, 0x2080380

    goto :goto_0

    .line 326
    :pswitch_15
    const v0, 0x2080381

    goto :goto_0

    .line 328
    :pswitch_16
    const v0, 0x2080382

    goto :goto_0

    .line 330
    :pswitch_17
    const v0, 0x2080383

    goto :goto_0

    .line 333
    :pswitch_18
    const v0, 0x2080384

    goto :goto_0

    .line 335
    :pswitch_19
    const v0, 0x2080385

    goto :goto_0

    .line 337
    :pswitch_1a
    const v0, 0x2080386

    goto :goto_0

    .line 339
    :pswitch_1b
    const v0, 0x2080387

    goto :goto_0

    .line 341
    :pswitch_1c
    const v0, 0x2080388

    goto :goto_0

    .line 343
    :pswitch_1d
    const v0, 0x2080389

    goto :goto_0

    .line 345
    :pswitch_1e
    const v0, 0x208038a

    goto :goto_0

    .line 347
    :pswitch_1f
    const v0, 0x208038b

    goto :goto_0

    .line 349
    :pswitch_20
    const v0, 0x208038c

    goto :goto_0

    .line 351
    :pswitch_21
    const v0, 0x208038d

    goto/16 :goto_0

    .line 353
    :pswitch_22
    const v0, 0x208038e

    goto/16 :goto_0

    .line 355
    :pswitch_23
    const v0, 0x208038f

    goto/16 :goto_0

    .line 358
    :pswitch_24
    const v0, 0x2080390

    goto/16 :goto_0

    .line 360
    :pswitch_25
    const v0, 0x2080391

    goto/16 :goto_0

    .line 362
    :pswitch_26
    const v0, 0x2080392

    goto/16 :goto_0

    .line 364
    :pswitch_27
    const v0, 0x2080393

    goto/16 :goto_0

    .line 367
    :pswitch_28
    const v0, 0x2080394

    goto/16 :goto_0

    .line 369
    :pswitch_29
    const v0, 0x2080395

    goto/16 :goto_0

    .line 371
    :pswitch_2a
    const v0, 0x2080396

    goto/16 :goto_0

    .line 373
    :pswitch_2b
    const v0, 0x2080397

    goto/16 :goto_0

    .line 281
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
    .end packed-switch
.end method

.method public getConditionText(I)Ljava/lang/String;
    .locals 2
    .parameter "conditionId"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 167
    const-string v0, ""

    .line 267
    :goto_0
    return-object v0

    .line 173
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 267
    :pswitch_0
    const-string v0, ""

    goto :goto_0

    .line 175
    :pswitch_1
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    .line 177
    :pswitch_2
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0

    .line 179
    :pswitch_3
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    goto :goto_0

    .line 181
    :pswitch_4
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    goto :goto_0

    .line 183
    :pswitch_5
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    goto :goto_0

    .line 185
    :pswitch_6
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    goto :goto_0

    .line 187
    :pswitch_7
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    goto :goto_0

    .line 189
    :pswitch_8
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    goto :goto_0

    .line 192
    :pswitch_9
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    goto :goto_0

    .line 194
    :pswitch_a
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    goto :goto_0

    .line 196
    :pswitch_b
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    goto :goto_0

    .line 198
    :pswitch_c
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    goto :goto_0

    .line 200
    :pswitch_d
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    goto :goto_0

    .line 202
    :pswitch_e
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0xd

    aget-object v0, v0, v1

    goto :goto_0

    .line 204
    :pswitch_f
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0xe

    aget-object v0, v0, v1

    goto :goto_0

    .line 206
    :pswitch_10
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0xf

    aget-object v0, v0, v1

    goto :goto_0

    .line 208
    :pswitch_11
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x10

    aget-object v0, v0, v1

    goto :goto_0

    .line 210
    :pswitch_12
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x11

    aget-object v0, v0, v1

    goto :goto_0

    .line 212
    :pswitch_13
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x12

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 214
    :pswitch_14
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x13

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 216
    :pswitch_15
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x14

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 218
    :pswitch_16
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x15

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 220
    :pswitch_17
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x16

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 222
    :pswitch_18
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x17

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 225
    :pswitch_19
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x18

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 227
    :pswitch_1a
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x19

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 229
    :pswitch_1b
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x1a

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 231
    :pswitch_1c
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x1b

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 233
    :pswitch_1d
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x1c

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 235
    :pswitch_1e
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x1d

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 237
    :pswitch_1f
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x1e

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 239
    :pswitch_20
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x1f

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 241
    :pswitch_21
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x20

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 243
    :pswitch_22
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x21

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 245
    :pswitch_23
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x22

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 247
    :pswitch_24
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x23

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 250
    :pswitch_25
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x24

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 252
    :pswitch_26
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x25

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 254
    :pswitch_27
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x26

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 256
    :pswitch_28
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x27

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 259
    :pswitch_29
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x28

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 261
    :pswitch_2a
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x29

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 263
    :pswitch_2b
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x2a

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 265
    :pswitch_2c
    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x2b

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_0
        :pswitch_0
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
    .end packed-switch
.end method

.method public getConditionText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "strId"

    .prologue
    .line 155
    const/4 v1, 0x0

    .line 157
    .local v1, val:I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 161
    :goto_0
    invoke-virtual {p0, v1}, Lcom/htc/weather/StateResources;->getConditionText(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLargeConditionIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "conditionId"

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-virtual {p0}, Lcom/htc/weather/StateResources;->isReady()Z

    move-result v3

    if-nez v3, :cond_0

    .line 96
    :goto_0
    return-object v2

    .line 91
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/weather/StateResources;->getLargeConditionResourceId(I)I

    move-result v1

    .line 92
    .local v1, resId:I
    iget-object v3, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 93
    .end local v1           #resId:I
    :catch_0
    move-exception v0

    .line 94
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public getLargeConditionIconBitmap(I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "conditionId"

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/htc/weather/StateResources;->isReady()Z

    move-result v2

    if-nez v2, :cond_0

    .line 101
    const/4 v0, 0x0

    .line 106
    :goto_0
    return-object v0

    .line 104
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/weather/StateResources;->getLargeConditionResourceId(I)I

    move-result v1

    .line 105
    .local v1, resId:I
    iget-object v2, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 106
    .local v0, bmp:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public getLargeConditionResourceId(I)I
    .locals 1
    .parameter "conditionId"

    .prologue
    const v0, 0x208031d

    .line 488
    packed-switch p1, :pswitch_data_0

    .line 582
    :goto_0
    :pswitch_0
    return v0

    .line 490
    :pswitch_1
    const v0, 0x2080317

    goto :goto_0

    .line 492
    :pswitch_2
    const v0, 0x2080318

    goto :goto_0

    .line 494
    :pswitch_3
    const v0, 0x2080319

    goto :goto_0

    .line 496
    :pswitch_4
    const v0, 0x208031a

    goto :goto_0

    .line 498
    :pswitch_5
    const v0, 0x208031b

    goto :goto_0

    .line 500
    :pswitch_6
    const v0, 0x208031c

    goto :goto_0

    .line 504
    :pswitch_7
    const v0, 0x208031e

    goto :goto_0

    .line 507
    :pswitch_8
    const v0, 0x208031f

    goto :goto_0

    .line 509
    :pswitch_9
    const v0, 0x2080320

    goto :goto_0

    .line 511
    :pswitch_a
    const v0, 0x2080321

    goto :goto_0

    .line 513
    :pswitch_b
    const v0, 0x2080322

    goto :goto_0

    .line 515
    :pswitch_c
    const v0, 0x2080323

    goto :goto_0

    .line 517
    :pswitch_d
    const v0, 0x2080324

    goto :goto_0

    .line 519
    :pswitch_e
    const v0, 0x2080325

    goto :goto_0

    .line 521
    :pswitch_f
    const v0, 0x2080326

    goto :goto_0

    .line 523
    :pswitch_10
    const v0, 0x2080327

    goto :goto_0

    .line 525
    :pswitch_11
    const v0, 0x2080328

    goto :goto_0

    .line 527
    :pswitch_12
    const v0, 0x2080329

    goto :goto_0

    .line 529
    :pswitch_13
    const v0, 0x208032a

    goto :goto_0

    .line 531
    :pswitch_14
    const v0, 0x208032b

    goto :goto_0

    .line 533
    :pswitch_15
    const v0, 0x208032c

    goto :goto_0

    .line 535
    :pswitch_16
    const v0, 0x208032d

    goto :goto_0

    .line 537
    :pswitch_17
    const v0, 0x208032e

    goto :goto_0

    .line 540
    :pswitch_18
    const v0, 0x208032f

    goto :goto_0

    .line 542
    :pswitch_19
    const v0, 0x2080330

    goto :goto_0

    .line 544
    :pswitch_1a
    const v0, 0x2080331

    goto :goto_0

    .line 546
    :pswitch_1b
    const v0, 0x2080332

    goto :goto_0

    .line 548
    :pswitch_1c
    const v0, 0x2080333

    goto :goto_0

    .line 550
    :pswitch_1d
    const v0, 0x2080334

    goto :goto_0

    .line 552
    :pswitch_1e
    const v0, 0x2080335

    goto :goto_0

    .line 554
    :pswitch_1f
    const v0, 0x2080336

    goto :goto_0

    .line 556
    :pswitch_20
    const v0, 0x2080337

    goto :goto_0

    .line 558
    :pswitch_21
    const v0, 0x2080338

    goto/16 :goto_0

    .line 560
    :pswitch_22
    const v0, 0x2080339

    goto/16 :goto_0

    .line 562
    :pswitch_23
    const v0, 0x208033a

    goto/16 :goto_0

    .line 565
    :pswitch_24
    const v0, 0x208033b

    goto/16 :goto_0

    .line 567
    :pswitch_25
    const v0, 0x208033c

    goto/16 :goto_0

    .line 569
    :pswitch_26
    const v0, 0x208033d

    goto/16 :goto_0

    .line 571
    :pswitch_27
    const v0, 0x208033e

    goto/16 :goto_0

    .line 574
    :pswitch_28
    const v0, 0x208033f

    goto/16 :goto_0

    .line 576
    :pswitch_29
    const v0, 0x2080340

    goto/16 :goto_0

    .line 578
    :pswitch_2a
    const v0, 0x2080341

    goto/16 :goto_0

    .line 580
    :pswitch_2b
    const v0, 0x2080342

    goto/16 :goto_0

    .line 488
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
    .end packed-switch
.end method

.method public getSmallConditionIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "conditionId"

    .prologue
    const/4 v2, 0x0

    .line 118
    invoke-virtual {p0}, Lcom/htc/weather/StateResources;->isReady()Z

    move-result v3

    if-nez v3, :cond_0

    .line 127
    :goto_0
    return-object v2

    .line 122
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/weather/StateResources;->getSmallConditionResourceId(I)I

    move-result v1

    .line 123
    .local v1, resId:I
    iget-object v3, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 124
    .end local v1           #resId:I
    :catch_0
    move-exception v0

    .line 125
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSmallConditionIconBitmap(I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "conditionId"

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/htc/weather/StateResources;->isReady()Z

    move-result v2

    if-nez v2, :cond_0

    .line 136
    const/4 v0, 0x0

    .line 141
    :goto_0
    return-object v0

    .line 139
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/weather/StateResources;->getSmallConditionResourceId(I)I

    move-result v1

    .line 140
    .local v1, resId:I
    iget-object v2, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 141
    .local v0, bmp:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public getSmallConditionResourceId(I)I
    .locals 1
    .parameter "conditionId"

    .prologue
    const v0, 0x20803a9

    .line 385
    packed-switch p1, :pswitch_data_0

    .line 479
    :goto_0
    :pswitch_0
    return v0

    .line 387
    :pswitch_1
    const v0, 0x20803a3

    goto :goto_0

    .line 389
    :pswitch_2
    const v0, 0x20803a4

    goto :goto_0

    .line 391
    :pswitch_3
    const v0, 0x20803a5

    goto :goto_0

    .line 393
    :pswitch_4
    const v0, 0x20803a6

    goto :goto_0

    .line 395
    :pswitch_5
    const v0, 0x20803a7

    goto :goto_0

    .line 397
    :pswitch_6
    const v0, 0x20803a8

    goto :goto_0

    .line 401
    :pswitch_7
    const v0, 0x20803aa

    goto :goto_0

    .line 404
    :pswitch_8
    const v0, 0x20803ab

    goto :goto_0

    .line 406
    :pswitch_9
    const v0, 0x20803ac

    goto :goto_0

    .line 408
    :pswitch_a
    const v0, 0x20803ad

    goto :goto_0

    .line 410
    :pswitch_b
    const v0, 0x20803ae

    goto :goto_0

    .line 412
    :pswitch_c
    const v0, 0x20803af

    goto :goto_0

    .line 414
    :pswitch_d
    const v0, 0x20803b0

    goto :goto_0

    .line 416
    :pswitch_e
    const v0, 0x20803b1

    goto :goto_0

    .line 418
    :pswitch_f
    const v0, 0x20803b2

    goto :goto_0

    .line 420
    :pswitch_10
    const v0, 0x20803b3

    goto :goto_0

    .line 422
    :pswitch_11
    const v0, 0x20803b4

    goto :goto_0

    .line 424
    :pswitch_12
    const v0, 0x20803b5

    goto :goto_0

    .line 426
    :pswitch_13
    const v0, 0x20803b6

    goto :goto_0

    .line 428
    :pswitch_14
    const v0, 0x20803b7

    goto :goto_0

    .line 430
    :pswitch_15
    const v0, 0x20803b8

    goto :goto_0

    .line 432
    :pswitch_16
    const v0, 0x20803b9

    goto :goto_0

    .line 434
    :pswitch_17
    const v0, 0x20803ba

    goto :goto_0

    .line 437
    :pswitch_18
    const v0, 0x20803bb

    goto :goto_0

    .line 439
    :pswitch_19
    const v0, 0x20803bc

    goto :goto_0

    .line 441
    :pswitch_1a
    const v0, 0x20803bd

    goto :goto_0

    .line 443
    :pswitch_1b
    const v0, 0x20803be

    goto :goto_0

    .line 445
    :pswitch_1c
    const v0, 0x20803bf

    goto :goto_0

    .line 447
    :pswitch_1d
    const v0, 0x20803c0

    goto :goto_0

    .line 449
    :pswitch_1e
    const v0, 0x20803c1

    goto :goto_0

    .line 451
    :pswitch_1f
    const v0, 0x20803c2

    goto :goto_0

    .line 453
    :pswitch_20
    const v0, 0x20803c3

    goto :goto_0

    .line 455
    :pswitch_21
    const v0, 0x20803c4

    goto/16 :goto_0

    .line 457
    :pswitch_22
    const v0, 0x20803c5

    goto/16 :goto_0

    .line 459
    :pswitch_23
    const v0, 0x20803c6

    goto/16 :goto_0

    .line 462
    :pswitch_24
    const v0, 0x20803c7

    goto/16 :goto_0

    .line 464
    :pswitch_25
    const v0, 0x20803c8

    goto/16 :goto_0

    .line 466
    :pswitch_26
    const v0, 0x20803c9

    goto/16 :goto_0

    .line 468
    :pswitch_27
    const v0, 0x20803ca

    goto/16 :goto_0

    .line 471
    :pswitch_28
    const v0, 0x20803cb

    goto/16 :goto_0

    .line 473
    :pswitch_29
    const v0, 0x20803cc

    goto/16 :goto_0

    .line 475
    :pswitch_2a
    const v0, 0x20803cd

    goto/16 :goto_0

    .line 477
    :pswitch_2b
    const v0, 0x20803ce

    goto/16 :goto_0

    .line 385
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
    .end packed-switch
.end method

.method public init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 29
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/weather/StateResources;->bInit:Z

    .line 30
    iput-object v3, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    .line 33
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.htc"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    .line 34
    iget-object v1, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    if-eqz v1, :cond_0

    .line 35
    iget-object v1, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    const/high16 v2, 0x207

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    .line 37
    iget-object v1, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 38
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/weather/StateResources;->bInit:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "StateResources"

    const-string v2, "!! can not find resource from com.htc"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iput-object v3, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    goto :goto_0

    .line 45
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 46
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 47
    iput-object v3, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    goto :goto_0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/htc/weather/StateResources;->bInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
