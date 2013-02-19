.class Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;
.super Ljava/lang/Object;
.source "HtcUsimPBRParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PbrFile"
.end annotation


# static fields
.field public static final PBR_MAX_RECORDS:I = 0x4


# instance fields
.field anrNums:I

.field emailNums:I

.field mADNOrder:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mANRNums:I

.field mEmailNums:I

.field mFileIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field mIAPOrder:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field mSFIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .local p2, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    const/4 v5, 0x0

    .line 441
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 442
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mFileIds:Ljava/util/HashMap;

    .line 443
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mSFIds:Ljava/util/HashMap;

    .line 444
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mADNOrder:Ljava/util/HashMap;

    .line 445
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mIAPOrder:Ljava/util/HashMap;

    .line 446
    iput v5, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mANRNums:I

    .line 448
    const/4 v1, 0x0

    .line 449
    .local v1, recNum:I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 450
    .local v3, record:[B
    const/4 v4, 0x4

    if-lt v1, v4, :cond_1

    .line 457
    .end local v3           #record:[B
    :cond_0
    return-void

    .line 453
    .restart local v3       #record:[B
    :cond_1
    new-instance v2, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v4, v3

    invoke-direct {v2, v3, v5, v4}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 454
    .local v2, recTlv:Lcom/android/internal/telephony/gsm/SimTlv;
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->parseTag(Lcom/android/internal/telephony/gsm/SimTlv;I)V

    .line 455
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method parseEf(Lcom/android/internal/telephony/gsm/SimTlv;Ljava/util/Map;II)V
    .locals 9
    .parameter "tlv"
    .parameter
    .parameter "parentTag"
    .parameter "recNum"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/SimTlv;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 489
    .local p2, val:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v5, 0x1

    .line 490
    .local v5, tagNumberWithinParentTag:I
    const-string v6, "HtcUsimPBRParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parentTag  = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const-string v6, "HtcUsimPBRParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "recNum  = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 495
    .local v3, order:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v4

    .line 497
    .local v4, tag:I
    const-string v6, "HtcUsimPBRParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tag  = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    packed-switch v4, :pswitch_data_0

    .line 561
    :cond_1
    :goto_0
    add-int/lit8 v5, v5, 0x1

    .line 562
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    move-result v6

    if-nez v6, :cond_0

    .line 564
    const/16 v6, 0xa9

    if-ne p3, v6, :cond_2

    .line 566
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mIAPOrder:Ljava/util/HashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    :cond_2
    iget v6, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mANRNums:I

    iget v7, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->anrNums:I

    if-ge v6, v7, :cond_3

    .line 570
    iget v6, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->anrNums:I

    iput v6, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mANRNums:I

    .line 573
    :cond_3
    iget v6, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mEmailNums:I

    iget v7, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->emailNums:I

    if-ge v6, v7, :cond_4

    .line 574
    iget v6, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->emailNums:I

    iput v6, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mEmailNums:I

    .line 576
    :cond_4
    return-void

    .line 511
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v0

    .line 512
    .local v0, data:[B
    const/4 v6, 0x0

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    const/4 v7, 0x1

    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    or-int v1, v6, v7

    .line 513
    .local v1, efid:I
    const/4 v2, 0x0

    .line 514
    .local v2, efsfi:I
    iget v6, p1, Lcom/android/internal/telephony/gsm/SimTlv;->curDataLength:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_6

    .line 515
    const/4 v6, 0x2

    aget-byte v6, v0, v6

    and-int/lit16 v2, v6, 0xff

    .line 516
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mSFIds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 517
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mSFIds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    :cond_5
    const-string v6, "HtcUsimPBRParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "efsfi  = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_6
    const-string v6, "HtcUsimPBRParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "efid  = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const/16 v6, 0xc4

    if-ne v4, v6, :cond_b

    .line 526
    iget v6, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->anrNums:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    iget v6, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->anrNums:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->anrNums:I

    .line 537
    :goto_1
    const/16 v6, 0xc0

    if-ne v4, v6, :cond_7

    .line 538
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mADNOrder:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    add-int/lit8 v8, p4, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    :cond_7
    const/16 v6, 0xa9

    if-ne p3, v6, :cond_a

    .line 545
    const/16 v6, 0xca

    if-ne v4, v6, :cond_8

    .line 546
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    #setter for: Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mEmailPresentInIAP:Ljava/lang/Boolean;
    invoke-static {v6, v7}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->access$002(Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 548
    :cond_8
    const/16 v6, 0xc4

    if-ne v4, v6, :cond_9

    .line 549
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    #getter for: Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mANRPresentInIAP:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->access$100(Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    :cond_9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    const-string v6, "HtcUsimPBRParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tagNumberWithinParentTag  = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_a
    const/16 v6, 0xa8

    if-ne p3, v6, :cond_1

    const/16 v6, 0xc4

    if-ne v4, v6, :cond_1

    .line 557
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    #getter for: Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->mANRPresentInIAP:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->access$100(Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 528
    :cond_b
    const/16 v6, 0xca

    if-ne v4, v6, :cond_d

    .line 529
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 530
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    :cond_c
    iget v6, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->emailNums:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->emailNums:I

    goto/16 :goto_1

    .line 534
    :cond_d
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 498
    :pswitch_data_0
    .packed-switch 0xc0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method parseTag(Lcom/android/internal/telephony/gsm/SimTlv;I)V
    .locals 7
    .parameter "tlv"
    .parameter "recNum"

    .prologue
    const/4 v6, 0x0

    .line 463
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 464
    .local v3, type_val:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    iput v6, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->anrNums:I

    .line 465
    iput v6, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->emailNums:I

    .line 467
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v1

    .line 468
    .local v1, tag:I
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 469
    .local v4, val:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    packed-switch v1, :pswitch_data_0

    .line 479
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    move-result v5

    if-nez v5, :cond_0

    .line 481
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v5

    if-eqz v5, :cond_1

    .line 482
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    :cond_1
    return-void

    .line 473
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v0

    .line 474
    .local v0, data:[B
    new-instance v2, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v5, v0

    invoke-direct {v2, v0, v6, v5}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 475
    .local v2, tlvEf:Lcom/android/internal/telephony/gsm/SimTlv;
    invoke-virtual {p0, v2, v4, v1, p2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser$PbrFile;->parseEf(Lcom/android/internal/telephony/gsm/SimTlv;Ljava/util/Map;II)V

    .line 476
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 469
    nop

    :pswitch_data_0
    .packed-switch 0xa8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
