.class public Lcom/htc/util/contacts/SNLinkUtils$OldMethod;
.super Ljava/lang/Object;
.source "SNLinkUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/contacts/SNLinkUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OldMethod"
.end annotation


# static fields
.field public static final LINK_DATA_ENDING_TOKEN:Ljava/lang/String; = "</sn>"

.field public static final LINK_DATA_STARTING_TOKEN:Ljava/lang/String; = "<sn>"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 374
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendLinkData(Ljava/lang/String;Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;)Ljava/lang/String;
    .locals 7
    .parameter "text"
    .parameter "data"

    .prologue
    .line 451
    if-nez p1, :cond_1

    .line 485
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 454
    .restart local p0
    :cond_1
    iget-object v5, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 458
    new-instance v4, Ljava/lang/StringBuffer;

    if-nez p0, :cond_2

    const-string v5, ""

    :goto_1
    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 459
    .local v4, textBuffer:Ljava/lang/StringBuffer;
    invoke-static {p0}, Lcom/htc/util/contacts/SNLinkUtils$OldMethod;->extractLinkData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 460
    .local v0, dataList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    if-nez v0, :cond_3

    .line 462
    const-string v5, "<sn>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 463
    const-string v5, "id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 464
    iget-object v5, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 465
    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 466
    const-string v5, "friendof:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 467
    iget-object v5, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 468
    const-string v5, "</sn>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 469
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .end local v0           #dataList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    .end local v4           #textBuffer:Ljava/lang/StringBuffer;
    :cond_2
    move-object v5, p0

    .line 458
    goto :goto_1

    .line 471
    .restart local v0       #dataList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    .restart local v4       #textBuffer:Ljava/lang/StringBuffer;
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 472
    .local v1, dataListSize:I
    const/16 v5, 0x14

    if-gt v1, v5, :cond_0

    .line 477
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v1, :cond_5

    .line 478
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;

    .line 479
    .local v2, dataTmp:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    iget-object v5, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    iget-object v6, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    iget-object v6, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 477
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 484
    .end local v2           #dataTmp:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    :cond_5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    invoke-static {p0, v0}, Lcom/htc/util/contacts/SNLinkUtils$OldMethod;->setLinkData(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static appendLinkData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "text"
    .parameter "userId"
    .parameter "friendOf"

    .prologue
    .line 496
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 502
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 499
    .restart local p0
    :cond_1
    new-instance v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;

    invoke-direct {v0}, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;-><init>()V

    .line 500
    .local v0, data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    iput-object p1, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    .line 501
    iput-object p2, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    .line 502
    invoke-static {p0, v0}, Lcom/htc/util/contacts/SNLinkUtils$OldMethod;->appendLinkData(Ljava/lang/String;Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static extractLinkData(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 415
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 442
    :cond_0
    :goto_0
    return-object v1

    .line 418
    :cond_1
    const-string v8, "<sn>"

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 419
    .local v5, startingIndex:I
    const-string v8, "</sn>"

    invoke-virtual {p0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 420
    .local v2, endingIndex:I
    if-lt v2, v5, :cond_0

    if-eq v5, v9, :cond_0

    if-eq v2, v9, :cond_0

    .line 423
    const-string v8, "<sn>"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {p0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 424
    .local v6, subText:Ljava/lang/String;
    new-instance v3, Ljava/util/StringTokenizer;

    const-string/jumbo v8, "|"

    invoke-direct {v3, v6, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    .local v3, idListTokens:Ljava/util/StringTokenizer;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 426
    .local v1, dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    :cond_2
    :goto_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 427
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 428
    .local v7, token:Ljava/lang/String;
    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 429
    .local v4, ids:[Ljava/lang/String;
    array-length v8, v4

    const/4 v9, 0x2

    if-lt v8, v9, :cond_2

    .line 432
    aget-object v8, v4, v10

    const-string v9, "id:"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    aget-object v8, v4, v11

    const-string v9, "friendof:"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 434
    new-instance v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;

    invoke-direct {v0}, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;-><init>()V

    .line 435
    .local v0, data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    aget-object v8, v4, v10

    const-string v9, "id:"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    .line 436
    aget-object v8, v4, v11

    const-string v9, "friendof:"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    .line 437
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 441
    .end local v0           #data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    .end local v4           #ids:[Ljava/lang/String;
    .end local v7           #token:Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    .line 442
    goto :goto_0
.end method

.method public static extractNoteText(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "text"

    .prologue
    const/4 v5, -0x1

    .line 396
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 406
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 399
    .restart local p0
    :cond_1
    const-string v4, "<sn>"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 400
    .local v1, startingIndex:I
    const-string v4, "</sn>"

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 401
    .local v0, endingIndex:I
    if-lt v0, v1, :cond_0

    if-eq v1, v5, :cond_0

    if-eq v0, v5, :cond_0

    .line 404
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 405
    .local v2, subTextFirstHalf:Ljava/lang/String;
    const-string v4, "</sn>"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 406
    .local v3, subTextSecondHalf:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static removeLinkData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "text"
    .parameter "userId"
    .parameter "friendOf"

    .prologue
    .line 549
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 567
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 552
    .restart local p0
    :cond_1
    invoke-static {p0}, Lcom/htc/util/contacts/SNLinkUtils$OldMethod;->extractLinkData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 553
    .local v1, dataList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    if-eqz v1, :cond_0

    .line 557
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 559
    .local v2, dataListSize:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 560
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;

    .line 562
    .local v0, data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    iget-object v4, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 563
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 567
    .end local v0           #data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    :cond_2
    invoke-static {p0, v1}, Lcom/htc/util/contacts/SNLinkUtils$OldMethod;->setLinkData(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 559
    .restart local v0       #data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private static setLinkData(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 10
    .parameter "text"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, dataList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    const/16 v9, 0x7c

    const/4 v8, -0x1

    .line 506
    const-string v7, "<sn>"

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 507
    .local v6, startingIndex:I
    const-string v7, "</sn>"

    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 508
    .local v4, endingIndex:I
    if-lt v4, v6, :cond_0

    if-eq v6, v8, :cond_0

    if-ne v4, v8, :cond_1

    .line 540
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 512
    .restart local p0
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-static {p0}, Lcom/htc/util/contacts/SNLinkUtils$OldMethod;->extractNoteText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 514
    .local v0, bufferText:Ljava/lang/StringBuffer;
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 515
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 516
    .local v2, dataListSize:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 518
    .local v3, dataStringBuilder:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v2, :cond_2

    .line 519
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;

    .line 520
    .local v1, data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    const-string v7, "id:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    iget-object v7, v1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    const/16 v7, 0x2f

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 523
    const-string v7, "friendof:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    iget-object v7, v1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 518
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 527
    .end local v1           #data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_3

    .line 528
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 530
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 531
    const/4 v7, 0x0

    const-string v8, "<sn>"

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    const-string v7, "</sn>"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 540
    .end local v2           #dataListSize:I
    .end local v3           #dataStringBuilder:Ljava/lang/StringBuilder;
    .end local v5           #i:I
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
