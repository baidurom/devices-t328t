.class public Lcom/htc/socialnetwork/facebook/FacebookClient;
.super Lcom/htc/socialnetwork/SocialNetworkClient;
.source "FacebookClient.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SocialNetwork-FacebookClient"

.field private static final UPLOAD_URL:Ljava/lang/String; = "http://api.facebook.com/restserver.php"


# instance fields
.field facebookInterface:Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "api_key"
    .parameter "secret"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/socialnetwork/SocialNetworkClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v0, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;

    invoke-direct {v0, p2, p3}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/socialnetwork/facebook/FacebookClient;->facebookInterface:Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;

    .line 57
    invoke-virtual {p0}, Lcom/htc/socialnetwork/facebook/FacebookClient;->refreshData()V

    .line 58
    return-void
.end method

.method private static getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 4
    .parameter "node"

    .prologue
    .line 720
    instance-of v2, p0, Lorg/w3c/dom/Text;

    if-eqz v2, :cond_0

    move-object v2, p0

    check-cast v2, Lorg/w3c/dom/Text;

    invoke-interface {v2}, Lorg/w3c/dom/Text;->getData()Ljava/lang/String;

    move-result-object v1

    .line 721
    .local v1, result:Ljava/lang/String;
    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 722
    .local v0, child:Lorg/w3c/dom/Node;
    :goto_1
    if-eqz v0, :cond_1

    .line 723
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/htc/socialnetwork/facebook/FacebookClient;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 724
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_1

    .line 720
    .end local v0           #child:Lorg/w3c/dom/Node;
    .end local v1           #result:Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0

    .line 727
    .restart local v0       #child:Lorg/w3c/dom/Node;
    .restart local v1       #result:Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public static printDom(Lorg/w3c/dom/Node;Ljava/lang/String;)V
    .locals 7
    .parameter "n"
    .parameter "prefix"

    .prologue
    .line 685
    move-object v3, p1

    .line 686
    .local v3, outString:Ljava/lang/String;
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 687
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Lcom/htc/socialnetwork/facebook/FacebookClient;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 692
    :goto_0
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 693
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 694
    .local v0, children:Lorg/w3c/dom/NodeList;
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .line 695
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 696
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/socialnetwork/facebook/FacebookClient;->printDom(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    .line 695
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 690
    .end local v0           #children:Lorg/w3c/dom/NodeList;
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 699
    .restart local v0       #children:Lorg/w3c/dom/NodeList;
    .restart local v1       #i:I
    .restart local v2       #length:I
    :cond_1
    return-void
.end method

.method private static stripEmptyTextNodes(Lorg/w3c/dom/Node;)V
    .locals 6
    .parameter "n"

    .prologue
    .line 702
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 703
    .local v1, children:Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 705
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 706
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 707
    .local v0, c:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    invoke-static {v0}, Lcom/htc/socialnetwork/facebook/FacebookClient;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 709
    invoke-interface {p0, v0}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 710
    add-int/lit8 v2, v2, -0x1

    .line 711
    add-int/lit8 v3, v3, -0x1

    .line 712
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 705
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 714
    :cond_0
    invoke-static {v0}, Lcom/htc/socialnetwork/facebook/FacebookClient;->stripEmptyTextNodes(Lorg/w3c/dom/Node;)V

    goto :goto_1

    .line 717
    .end local v0           #c:Lorg/w3c/dom/Node;
    :cond_1
    return-void
.end method


# virtual methods
.method public addPhotoComment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "pid"
    .parameter "comment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 876
    iget-object v0, p0, Lcom/htc/socialnetwork/facebook/FacebookClient;->facebookInterface:Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;

    invoke-virtual {v0, p1, p2}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->addPhotoComment(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    return-void
.end method

.method public addToAlbum(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .parameter "aid"
    .parameter "pidlist"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 773
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7d9

    const-string v2, "not implement yet"

    invoke-direct {v0, v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method protected checkLogin()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/socialnetwork/facebook/FacebookClient;->facebookInterface:Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;

    invoke-virtual {v0}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getSession()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createAlbum(Ljava/util/HashMap;I)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter "privacy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 782
    .local p1, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "albumName"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 783
    .local v0, albumName:Ljava/lang/String;
    const-string v3, "location"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 784
    .local v2, location:Ljava/lang/String;
    const-string v3, "description"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 785
    .local v1, description:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/socialnetwork/facebook/FacebookClient;->facebookInterface:Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;

    invoke-virtual {v3, v0, v1, v2, p2}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->createAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public createAlbum(Ljava/util/HashMap;ZI)Ljava/util/HashMap;
    .locals 12
    .parameter
    .parameter "isPublic"
    .parameter "photoAmount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZI)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 737
    .local p1, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "albumName"

    invoke-virtual {p1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 738
    .local v3, albumName:Ljava/lang/String;
    const-string v10, "location"

    invoke-virtual {p1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 739
    .local v7, location:Ljava/lang/String;
    const-string v10, "description"

    invoke-virtual {p1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 740
    .local v5, description:Ljava/lang/String;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 741
    .local v0, AlbumMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v10, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mDataHelper:Lcom/htc/socialnetwork/SocialNetworkDataHelper;

    invoke-virtual {v10}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->getActiveUserId()Ljava/lang/String;

    move-result-object v9

    .line 742
    .local v9, uid:Ljava/lang/String;
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 743
    .local v4, albums:Ljava/util/List;,"Ljava/util/List<Lcom/htc/socialnetwork/Album;>;"
    iget-object v10, p0, Lcom/htc/socialnetwork/facebook/FacebookClient;->facebookInterface:Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;

    invoke-virtual {v10, v9, v4}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getAlbums(Ljava/lang/String;Ljava/util/Collection;)V

    .line 745
    const/16 v8, 0x3c

    .line 746
    .local v8, maxnum:I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 747
    .local v6, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/socialnetwork/Album;>;"
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 748
    if-gtz p3, :cond_2

    .line 758
    :cond_1
    :goto_1
    if-lez p3, :cond_4

    .line 759
    iget-object v11, p0, Lcom/htc/socialnetwork/facebook/FacebookClient;->facebookInterface:Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;

    if-eqz p2, :cond_3

    const/4 v10, 0x0

    :goto_2
    invoke-virtual {v11, v3, v5, v7, v10}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->createAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 761
    .local v1, aid:Ljava/lang/String;
    const/16 v10, 0x3c

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    add-int/lit8 p3, p3, -0x3c

    .line 763
    goto :goto_1

    .line 750
    .end local v1           #aid:Ljava/lang/String;
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/socialnetwork/Album;

    .line 751
    .local v2, album:Lcom/htc/socialnetwork/Album;
    invoke-virtual {v2}, Lcom/htc/socialnetwork/Album;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v2}, Lcom/htc/socialnetwork/Album;->getPhotoAmount()I

    move-result v10

    const/16 v11, 0x3c

    if-ge v10, v11, :cond_0

    .line 753
    invoke-virtual {v2}, Lcom/htc/socialnetwork/Album;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Lcom/htc/socialnetwork/Album;->getPhotoAmount()I

    move-result v11

    rsub-int/lit8 v11, v11, 0x3c

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    invoke-virtual {v2}, Lcom/htc/socialnetwork/Album;->getPhotoAmount()I

    move-result v10

    rsub-int/lit8 v10, v10, 0x3c

    sub-int/2addr p3, v10

    goto :goto_0

    .line 759
    .end local v2           #album:Lcom/htc/socialnetwork/Album;
    :cond_3
    const/4 v10, 0x1

    goto :goto_2

    .line 764
    :cond_4
    return-object v0
.end method

.method public deepLink(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 866
    iget-object v0, p0, Lcom/htc/socialnetwork/facebook/FacebookClient;->facebookInterface:Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSecret:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/socialnetwork/facebook/FacebookClient;->getDataHelper()Lcom/htc/socialnetwork/SocialNetworkDataHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->getActiveUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getDeepLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public doAuth()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7d9

    const-string v2, "need account and paasword"

    invoke-direct {v0, v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public doAuth(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "username"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v1, p0, Lcom/htc/socialnetwork/facebook/FacebookClient;->facebookInterface:Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;

    invoke-virtual {v1, p1, p2}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->login(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, loginUserId:Ljava/lang/String;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected findAlbumById(Ljava/lang/String;)Lcom/htc/socialnetwork/Album;
    .locals 5
    .parameter "aid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/AuthenticationException;,
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 93
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 94
    .local v1, albums:Ljava/util/List;,"Ljava/util/List<Lcom/htc/socialnetwork/Album;>;"
    iget-object v2, p0, Lcom/htc/socialnetwork/facebook/FacebookClient;->facebookInterface:Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v4

    invoke-virtual {v2, v3, v1}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getAlbum([Ljava/lang/String;Ljava/util/Collection;)V

    .line 95
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 100
    :goto_0
    return-object v0

    .line 98
    :cond_0
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/socialnetwork/Album;

    .line 99
    .local v0, album:Lcom/htc/socialnetwork/Album;
    invoke-virtual {v0, p0}, Lcom/htc/socialnetwork/Album;->setSNClient(Lcom/htc/socialnetwork/SocialNetworkClient;)V

    goto :goto_0
.end method

.method protected findAlbumList(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 109
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 110
    .local v1, albums:Ljava/util/List;,"Ljava/util/List<Lcom/htc/socialnetwork/Album;>;"
    iget-object v3, p0, Lcom/htc/socialnetwork/facebook/FacebookClient;->facebookInterface:Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;

    invoke-virtual {v3, p1, v1}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getAlbums(Ljava/lang/String;Ljava/util/Collection;)V

    .line 111
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    .line 112
    .local v0, aids:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 113
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/socialnetwork/Album;

    invoke-virtual {v3}, Lcom/htc/socialnetwork/Album;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    :cond_0
    return-object v0
.end method

.method protected findEventById(J)Lcom/htc/socialnetwork/Event;
    .locals 4
    .parameter "eid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/AuthenticationException;,
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 147
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 148
    .local v0, events:Ljava/util/List;,"Ljava/util/List<Lcom/htc/socialnetwork/Event;>;"
    iget-object v1, p0, Lcom/htc/socialnetwork/facebook/FacebookClient;->facebookInterface:Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;

    const/4 v2, 0x1

    new-array v2, v2, [J

    aput-wide p1, v2, v3

    invoke-virtual {v1, v2, v0}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getEventByIds([JLjava/util/Collection;)V

    .line 149
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 150
    const/4 v1, 0x0

    .line 151
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/socialnetwork/Event;

    goto :goto_0
.end method

.method protected findEvents(Ljava/lang/String;Ljava/util/Collection;J)V
    .locals 1
    .parameter "uid"
    .parameter
    .parameter "start_time"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/htc/socialnetwork/Event;",
            ">;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 161
    .local p2, events:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/htc/socialnetwork/Event;>;"
    iget-object v0, p0, Lcom/htc/socialnetwork/facebook/FacebookClient;->facebookInterface:Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;

    invoke-virtual {v0, p1, p3, p4, p2}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getEvents(Ljava/lang/String;JLjava/util/Collection;)V

    .line 162
    return-void
.end method

.method protected findFriendIdList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lcom/htc/socialnetwork/facebook/FacebookClient;->facebookInterface:Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;

    invoke-virtual {v0, p1}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getFriends(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected findFriendIds(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .parameter "uid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 189
    .local p2, collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/htc/socialnetwork/facebook/FacebookClient;->facebookInterface:Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;

    invoke-virtual {v0, p1, p2}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getFriendIds(Ljava/lang/String;Ljava/util/Collection;)V

    .line 190
    return-void
.end method

.method protected findFriendInvites(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .parameter "userId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 180
    .local p2, invites:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/htc/socialnetwork/facebook/FacebookClient;->facebookInterface:Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;

    invoke-virtual {v0, p1, p2}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getFriendInvites(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 181
    return-void
.end method

.method protected findFriends(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/htc/socialnetwork/facebook/FacebookClient;->facebookInterface:Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;

    invoke-virtual {v0, p1}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getFriendList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected findFriendsWithContactData(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/htc/socialnetwork/facebook/FacebookClient;->facebookInterface:Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;

    invoke-virtual {v0, p1}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getFriendListWithContactData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected findGroupIdList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lcom/htc/socialnetwork/facebook/FacebookClient;->facebookInterface:Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;

    invoke-virtual {v0, p1}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getGroupIds(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected findGroupInviteList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/GroupInvite;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 234
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 235
    .local v0, groupIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 236
    .local v1, invites:Ljava/util/List;,"Ljava/util/List<Lcom/htc/socialnetwork/GroupInvite;>;"
    iget-object v2, p0, Lcom/htc/socialnetwork/facebook/FacebookClient;->facebookInterface:Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;

    invoke-virtual {v2, v3, v3, v0, v3}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getNotifications(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 237
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 238
    iget-object v2, p0, Lcom/htc/socialnetwork/facebook/FacebookClient;->facebookInterface:Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;

    invoke-virtual {v2, v0, v1}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getGroupInvites(Ljava/util/List;Ljava/util/Collection;)V

    .line 240
    :cond_0
    return-object v1
.end method

.method protected findMsgUpdate(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Update;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 250
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 251
    .local v5, updates:Ljava/util/List;,"Ljava/util/List<Lcom/htc/socialnetwork/Update;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 252
    .local v0, eventInvites:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/htc/socialnetwork/facebook/FacebookClient;->facebookInterface:Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;

    invoke-virtual {v7, v5, v8, v8, v0}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getNotifications(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 253
    new-instance v1, Lcom/htc/socialnetwork/Update;

    invoke-direct {v1}, Lcom/htc/socialnetwork/Update;-><init>()V

    .line 254
    .local v1, event_invite:Lcom/htc/socialnetwork/Update;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/htc/socialnetwork/Update;->setCount(I)V

    .line 255
    const-string v7, "event_invites"

    invoke-virtual {v1, v7}, Lcom/htc/socialnetwork/Update;->setType(Ljava/lang/String;)V

    .line 256
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    iget-object v7, p0, Lcom/htc/socialnetwork/facebook/FacebookClient;->facebookInterface:Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "select wall_count, notes_count from user where uid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->fql(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 263
    .local v4, retObj:Ljava/lang/Object;
    if-eqz v4, :cond_0

    instance-of v7, v4, Lorg/json/JSONArray;

    if-eqz v7, :cond_0

    .line 265
    :try_start_0
    check-cast v4, Lorg/json/JSONArray;

    .end local v4           #retObj:Ljava/lang/Object;
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 267
    .local v2, jsonObject:Lorg/json/JSONObject;
    new-instance v6, Lcom/htc/socialnetwork/Update;

    invoke-direct {v6}, Lcom/htc/socialnetwork/Update;-><init>()V

    .line 268
    .local v6, wall:Lcom/htc/socialnetwork/Update;
    const-string v7, "wall"

    invoke-virtual {v6, v7}, Lcom/htc/socialnetwork/Update;->setType(Ljava/lang/String;)V

    .line 269
    const-string v7, "wall_count"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/htc/socialnetwork/Update;->setCount(I)V

    .line 271
    new-instance v3, Lcom/htc/socialnetwork/Update;

    invoke-direct {v3}, Lcom/htc/socialnetwork/Update;-><init>()V

    .line 272
    .local v3, note:Lcom/htc/socialnetwork/Update;
    const-string v7, "notes"

    invoke-virtual {v3, v7}, Lcom/htc/socialnetwork/Update;->setType(Ljava/lang/String;)V

    .line 273
    const-string v7, "notes_count"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/htc/socialnetwork/Update;->setCount(I)V

    .line 275
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    .end local v3           #note:Lcom/htc/socialnetwork/Update;
    .end local v6           #wall:Lcom/htc/socialnetwork/Update;
    :cond_0
    :goto_0
    return-object v5

    .line 277
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method protected findPhotoById(Ljava/lang/String;)Lcom/htc/socialnetwork/Photo;
    .locals 5
    .parameter "pid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/AuthenticationException;,
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 291
    iget-object v2, p0, Lcom/htc/socialnetwork/facebook/FacebookClient;->facebookInterface:Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v4

    invoke-virtual {v2, v1, v3}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getPhoto(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 293
    .local v0, photos:Ljava/util/List;,"Ljava/util/List<Lcom/htc/socialnetwork/Photo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/socialnetwork/Photo;

    goto :goto_0
.end method

.method protected findPhotoList(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter "aid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 132
    iget-object v3, p0, Lcom/htc/socialnetwork/facebook/FacebookClient;->facebookInterface:Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getPhoto(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 133
    .local v1, photos:Ljava/util/List;,"Ljava/util/List<Lcom/htc/socialnetwork/Photo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 135
    .local v2, pidList:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 136
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/socialnetwork/Photo;

    invoke-virtual {v3}, Lcom/htc/socialnetwork/Photo;->getPid()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_0
    return-object v2
.end method

.method protected findStatusList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/htc/socialnetwork/facebook/FacebookClient;->facebookInterface:Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;

    invoke-virtual {v0, p1}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getStatusList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected findUpdatePhoto(Ljava/lang/String;J)[Ljava/lang/String;
    .locals 15
    .parameter "user_id"
    .parameter "startTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 305
    const/4 v10, 0x0

    .line 306
    .local v10, pidList:[Ljava/lang/String;
    const-wide/16 v12, 0x3e8

    div-long p2, p2, v12

    .line 308
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SELECT pid FROM photo WHERE aid IN ( SELECT aid FROM album WHERE owner = \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' AND modified > "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p2

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " )"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " AND created > "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p2

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ORDER BY created ASC"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 314
    .local v11, query:Ljava/lang/String;
    :try_start_0
    iget-object v12, p0, Lcom/htc/socialnetwork/facebook/FacebookClient;->facebookInterface:Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;

    invoke-virtual {v12, v11}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->fql(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONArray;

    .line 317
    .local v5, jsonArray:Lorg/json/JSONArray;
    if-nez v5, :cond_0

    .line 318
    const/4 v12, 0x0

    .line 343
    .end local v5           #jsonArray:Lorg/json/JSONArray;
    :goto_0
    return-object v12

    .line 320
    .restart local v5       #jsonArray:Lorg/json/JSONArray;
    :cond_0
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 322
    .local v7, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v3, v12, :cond_2

    .line 323
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 325
    .local v6, jsonObj:Lorg/json/JSONObject;
    if-eqz v6, :cond_1

    const-string v12, "pid"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1

    const-string v12, "pid"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    const-string v13, "null"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 327
    const-string v12, "pid"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 330
    .end local v6           #jsonObj:Lorg/json/JSONObject;
    :cond_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    new-array v10, v12, [Ljava/lang/String;

    .line 331
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 332
    .local v4, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .local v8, m:I
    move v9, v8

    .line 333
    .end local v8           #m:I
    .local v9, m:I
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 334
    add-int/lit8 v8, v9, 0x1

    .end local v9           #m:I
    .restart local v8       #m:I
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    aput-object v12, v10, v9
    :try_end_0
    .catch Lcom/htc/socialnetwork/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move v9, v8

    .end local v8           #m:I
    .restart local v9       #m:I
    goto :goto_2

    .line 335
    .end local v3           #i:I
    .end local v4           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5           #jsonArray:Lorg/json/JSONArray;
    .end local v7           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v9           #m:I
    :catch_0
    move-exception v2

    .line 336
    .local v2, e:Lcom/htc/socialnetwork/AuthenticationException;
    const-string v12, "SocialNetwork-FacebookClient"

    invoke-virtual {v2}, Lcom/htc/socialnetwork/AuthenticationException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2           #e:Lcom/htc/socialnetwork/AuthenticationException;
    :cond_3
    move-object v12, v10

    .line 343
    goto :goto_0

    .line 337
    :catch_1
    move-exception v2

    .line 338
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 339
    new-instance v12, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v13, 0x7d0

    const-string v14, "JSONException"

    invoke-direct {v12, v13, v14, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v12
.end method

.method protected findUpdatePhotos(Ljava/util/Collection;J)Ljava/util/HashMap;
    .locals 16
    .parameter
    .parameter "startTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;J)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Photo;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 353
    .local p1, uids:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 354
    const/4 v11, 0x0

    .line 441
    :cond_0
    return-object v11

    .line 356
    :cond_1
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 357
    .local v11, updatedPhotos:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/htc/socialnetwork/Photo;>;>;"
    const-wide/16 v12, 0x3e8

    div-long p2, p2, v12

    .line 358
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SELECT pid, aid, owner, src_small, src_big, link, caption, created, modified FROM photo WHERE aid IN ( SELECT aid FROM album WHERE owner IN ( "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    move-object/from16 v0, p1

    invoke-static {v13, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ) AND modified > "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p2

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " )"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " AND created > "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p2

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ORDER BY created ASC"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 368
    .local v8, query:Ljava/lang/String;
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 369
    .local v4, jsonArray:Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/socialnetwork/facebook/FacebookClient;->facebookInterface:Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;

    invoke-virtual {v12, v8}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->fql(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 370
    .local v9, response:Ljava/lang/Object;
    if-nez v9, :cond_d

    .line 380
    :goto_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v3, v12, :cond_0

    .line 382
    :try_start_0
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 383
    .local v5, jsonObj:Lorg/json/JSONObject;
    if-eqz v5, :cond_c

    .line 384
    new-instance v7, Lcom/htc/socialnetwork/Photo;

    invoke-direct {v7}, Lcom/htc/socialnetwork/Photo;-><init>()V

    .line 385
    .local v7, pht:Lcom/htc/socialnetwork/Photo;
    const/4 v10, 0x0

    .line 386
    .local v10, uid:Ljava/lang/String;
    const-string v12, "owner"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    const-string v12, "owner"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 387
    const-string v12, "owner"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 388
    :cond_2
    const-string v12, "aid"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    const-string v12, "aid"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 389
    const-string v12, "aid"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/htc/socialnetwork/Photo;->setAlbum(Ljava/lang/String;)V

    .line 390
    :cond_3
    const-string v12, "caption"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    const-string v12, "caption"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 391
    const-string v12, "caption"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/htc/socialnetwork/Photo;->setTitle(Ljava/lang/String;)V

    .line 392
    :cond_4
    const-string v12, "src_big"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    const-string v12, "src_big"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v12

    if-eqz v12, :cond_5

    .line 394
    :try_start_1
    new-instance v12, Ljava/net/URL;

    const-string v13, "src_big"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Lcom/htc/socialnetwork/Photo;->setUrl(Ljava/net/URL;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 398
    :cond_5
    :goto_2
    :try_start_2
    const-string v12, "src_small"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_6

    const-string v12, "src_small"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v12

    if-eqz v12, :cond_6

    .line 401
    :try_start_3
    new-instance v12, Ljava/net/URL;

    const-string v13, "src_small"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Lcom/htc/socialnetwork/Photo;->setThumbUrl(Ljava/net/URL;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 407
    :cond_6
    :goto_3
    :try_start_4
    const-string v12, "link"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_7

    const-string v12, "link"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result v12

    if-eqz v12, :cond_7

    .line 409
    :try_start_5
    new-instance v12, Ljava/net/URL;

    const-string v13, "link"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Lcom/htc/socialnetwork/Photo;->setLink(Ljava/net/URL;)V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 414
    :cond_7
    :goto_4
    :try_start_6
    const-string v12, "created"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_8

    const-string v12, "created"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 415
    const-string v12, "created"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    invoke-virtual {v7, v12, v13}, Lcom/htc/socialnetwork/Photo;->setTime(J)V

    .line 416
    :cond_8
    const-string v12, "modified"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_9

    const-string v12, "modified"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 417
    const-string v12, "modified"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    invoke-virtual {v7, v12, v13}, Lcom/htc/socialnetwork/Photo;->setLastUpdateTime(J)V

    .line 419
    :cond_9
    const-string v12, "pid"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_a

    const-string v12, "pid"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 420
    const-string v12, "pid"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/htc/socialnetwork/Photo;->setPid(Ljava/lang/String;)V

    .line 422
    :cond_a
    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 423
    .local v6, photoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/socialnetwork/Photo;>;"
    if-nez v6, :cond_b

    .line 424
    new-instance v6, Ljava/util/LinkedList;

    .end local v6           #photoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/socialnetwork/Photo;>;"
    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 426
    .restart local v6       #photoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/socialnetwork/Photo;>;"
    :cond_b
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    invoke-virtual {v11, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 429
    const/4 v6, 0x0

    .line 380
    .end local v5           #jsonObj:Lorg/json/JSONObject;
    .end local v6           #photoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/socialnetwork/Photo;>;"
    .end local v7           #pht:Lcom/htc/socialnetwork/Photo;
    .end local v10           #uid:Ljava/lang/String;
    :cond_c
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 372
    .end local v3           #i:I
    :cond_d
    instance-of v12, v9, Lorg/json/JSONArray;

    if-eqz v12, :cond_e

    move-object v4, v9

    .line 373
    check-cast v4, Lorg/json/JSONArray;

    goto/16 :goto_0

    .line 375
    :cond_e
    new-instance v12, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v13, 0x7d0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "findUpdatePhotos failed FQL: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\r\n Response: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v12

    .line 432
    .restart local v3       #i:I
    :catch_0
    move-exception v2

    .line 433
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v12, "SocialNetwork-FacebookClient"

    const-string v13, "NumberFormatException at findUpdatePhotos"

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 434
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v2

    .line 435
    .local v2, e:Lorg/json/JSONException;
    const-string v12, "SocialNetwork-FacebookClient"

    const-string v13, "JSONException at findUpdatePhotos"

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 436
    .end local v2           #e:Lorg/json/JSONException;
    :catch_2
    move-exception v2

    .line 437
    .local v2, e:Ljava/lang/Exception;
    const-string v12, "SocialNetwork-FacebookClient"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " at findUpdatePhotos"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 410
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v5       #jsonObj:Lorg/json/JSONObject;
    .restart local v7       #pht:Lcom/htc/socialnetwork/Photo;
    .restart local v10       #uid:Ljava/lang/String;
    :catch_3
    move-exception v12

    goto/16 :goto_4

    .line 403
    :catch_4
    move-exception v12

    goto/16 :goto_3

    .line 395
    :catch_5
    move-exception v12

    goto/16 :goto_2
.end method

.method protected findUserById(Ljava/lang/String;)Lcom/htc/socialnetwork/User;
    .locals 2
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/AuthenticationException;,
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 450
    iget-object v1, p0, Lcom/htc/socialnetwork/facebook/FacebookClient;->facebookInterface:Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;

    invoke-virtual {v1, p1}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getUserInfo(Ljava/lang/String;)Lcom/htc/socialnetwork/User;

    move-result-object v0

    .line 451
    .local v0, user:Lcom/htc/socialnetwork/User;
    if-nez v0, :cond_0

    .line 452
    const/4 v0, 0x0

    .line 454
    .end local v0           #user:Lcom/htc/socialnetwork/User;
    :goto_0
    return-object v0

    .line 453
    .restart local v0       #user:Lcom/htc/socialnetwork/User;
    :cond_0
    invoke-virtual {v0, p0}, Lcom/htc/socialnetwork/User;->setSNClient(Lcom/htc/socialnetwork/SocialNetworkClient;)V

    goto :goto_0
.end method

.method protected findUserByIds(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/htc/socialnetwork/User;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/AuthenticationException;,
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 463
    .local p1, uids:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    .local p2, users:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/htc/socialnetwork/User;>;"
    if-nez p2, :cond_0

    .line 466
    :goto_0
    return-void

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/htc/socialnetwork/facebook/FacebookClient;->facebookInterface:Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;

    invoke-virtual {v0, p1, p2}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getUserInfo(Ljava/util/Collection;Ljava/util/Collection;)V

    goto :goto_0
.end method

.method protected findUserByName(Ljava/lang/String;)Lcom/htc/socialnetwork/User;
    .locals 3
    .parameter "username"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/AuthenticationException;,
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 475
    iget-object v1, p0, Lcom/htc/socialnetwork/facebook/FacebookClient;->facebookInterface:Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;

    invoke-virtual {v1, p1}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getUserByName(Ljava/lang/String;)[Lcom/htc/socialnetwork/User;

    move-result-object v0

    .line 476
    .local v0, users:[Lcom/htc/socialnetwork/User;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 477
    :cond_0
    const/4 v1, 0x0

    .line 480
    :goto_0
    return-object v1

    .line 478
    :cond_1
    aget-object v1, v0, v2

    invoke-virtual {v1, p0}, Lcom/htc/socialnetwork/User;->setSNClient(Lcom/htc/socialnetwork/SocialNetworkClient;)V

    .line 480
    aget-object v1, v0, v2

    goto :goto_0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    const-string v0, "com.htc.socialnetwork.facebook"

    return-object v0
.end method

.method public getAlbums(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Album;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 795
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 796
    .local v0, albums:Ljava/util/List;,"Ljava/util/List<Lcom/htc/socialnetwork/Album;>;"
    iget-object v1, p0, Lcom/htc/socialnetwork/facebook/FacebookClient;->facebookInterface:Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;

    invoke-virtual {v1, p1, v0}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getAlbums(Ljava/lang/String;Ljava/util/Collection;)V

    .line 797
    return-object v0
.end method

.method public getFilePartName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 488
    const-string v0, ""

    return-object v0
.end method

.method public getLoginURL()Ljava/net/URL;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 496
    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7d9

    const-string v2, "API_NOT_SUPPORTEXCEPTION"

    invoke-direct {v0, v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public getLoginUser()Lcom/htc/socialnetwork/User;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 506
    iget-object v1, p0, Lcom/htc/socialnetwork/facebook/FacebookClient;->facebookInterface:Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;

    invoke-virtual {v1}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getLoginUser()Ljava/lang/String;

    move-result-object v0

    .line 509
    .local v0, loggedInUID:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 510
    const/4 v1, 0x0

    .line 512
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/socialnetwork/facebook/FacebookClient;->getUserById(Ljava/lang/String;)Lcom/htc/socialnetwork/User;

    move-result-object v1

    goto :goto_0
.end method

.method public getPhotoComments(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "pid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Comment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 905
    iget-object v0, p0, Lcom/htc/socialnetwork/facebook/FacebookClient;->facebookInterface:Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;

    invoke-virtual {v0, p1}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getComments(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPhotoFavoriteList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "pid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 896
    iget-object v0, p0, Lcom/htc/socialnetwork/facebook/FacebookClient;->facebookInterface:Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;

    invoke-virtual {v0, p1}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getLikeList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPhotos(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter "aid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Photo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 806
    iget-object v0, p0, Lcom/htc/socialnetwork/facebook/FacebookClient;->facebookInterface:Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getPhoto(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRecentPhotos(Ljava/lang/String;I)Ljava/util/List;
    .locals 11
    .parameter "userId"
    .parameter "maxNum"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Photo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 817
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 818
    .local v5, photoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/socialnetwork/Photo;>;"
    const/4 v7, 0x1

    if-ge p2, v7, :cond_0

    .line 819
    const/4 p2, 0x1

    .line 820
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SELECT pid, src_big, src_small, link, created FROM photo WHERE aid IN ( SELECT aid from album WHERE owner="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ) ORDER BY created DESC "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "LIMIT 0,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 825
    .local v6, query:Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/htc/socialnetwork/facebook/FacebookClient;->facebookInterface:Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;

    invoke-virtual {v7, v6}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->fql(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    .line 827
    .local v2, jsonArray:Lorg/json/JSONArray;
    if-nez v2, :cond_2

    .line 828
    const/4 v5, 0x0

    .line 858
    .end local v2           #jsonArray:Lorg/json/JSONArray;
    .end local v5           #photoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/socialnetwork/Photo;>;"
    :cond_1
    :goto_0
    return-object v5

    .line 830
    .restart local v2       #jsonArray:Lorg/json/JSONArray;
    .restart local v5       #photoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/socialnetwork/Photo;>;"
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 831
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 832
    .local v3, jsonObj:Lorg/json/JSONObject;
    if-eqz v3, :cond_3

    const-string v7, "pid"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    const-string v7, "pid"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "null"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "src_big"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    const-string v7, "src_small"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    const-string v7, "link"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 837
    new-instance v4, Lcom/htc/socialnetwork/Photo;

    invoke-direct {v4}, Lcom/htc/socialnetwork/Photo;-><init>()V

    .line 838
    .local v4, p:Lcom/htc/socialnetwork/Photo;
    const-string v7, "pid"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/htc/socialnetwork/Photo;->setPid(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/htc/socialnetwork/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 840
    :try_start_1
    new-instance v7, Ljava/net/URL;

    const-string v8, "src_big"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Lcom/htc/socialnetwork/Photo;->setUrl(Ljava/net/URL;)V

    .line 841
    new-instance v7, Ljava/net/URL;

    const-string v8, "src_small"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Lcom/htc/socialnetwork/Photo;->setThumbUrl(Ljava/net/URL;)V

    .line 842
    new-instance v7, Ljava/net/URL;

    const-string v8, "link"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Lcom/htc/socialnetwork/Photo;->setLink(Ljava/net/URL;)V

    .line 843
    const-string v7, "created"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    invoke-virtual {v4, v7, v8}, Lcom/htc/socialnetwork/Photo;->setLastUpdateTime(J)V

    .line 845
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/htc/socialnetwork/AuthenticationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 830
    .end local v4           #p:Lcom/htc/socialnetwork/Photo;
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 846
    .restart local v4       #p:Lcom/htc/socialnetwork/Photo;
    :catch_0
    move-exception v0

    .line 847
    .local v0, e:Ljava/net/MalformedURLException;
    :try_start_2
    const-string v7, "SocialNetwork-FacebookClient"

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/htc/socialnetwork/AuthenticationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 851
    .end local v0           #e:Ljava/net/MalformedURLException;
    .end local v1           #i:I
    .end local v2           #jsonArray:Lorg/json/JSONArray;
    .end local v3           #jsonObj:Lorg/json/JSONObject;
    .end local v4           #p:Lcom/htc/socialnetwork/Photo;
    :catch_1
    move-exception v0

    .line 852
    .local v0, e:Lcom/htc/socialnetwork/AuthenticationException;
    const-string v7, "SocialNetwork-FacebookClient"

    invoke-virtual {v0}, Lcom/htc/socialnetwork/AuthenticationException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 853
    .end local v0           #e:Lcom/htc/socialnetwork/AuthenticationException;
    :catch_2
    move-exception v0

    .line 854
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 855
    new-instance v7, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v8, 0x7d0

    const-string v9, "JSONException"

    invoke-direct {v7, v8, v9, v0}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/socialnetwork/facebook/FacebookClient;->facebookInterface:Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;

    invoke-virtual {v1}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getSession()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/socialnetwork/facebook/FacebookClient;->facebookInterface:Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;

    invoke-virtual {v1}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getSessionSecret()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUploadParameters(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 531
    .local p1, input:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/htc/socialnetwork/facebook/FacebookClient;->facebookInterface:Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;

    invoke-virtual {v4}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getSessionSecret()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 532
    new-instance v2, Ljava/util/HashMap;

    const/4 v4, 0x6

    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 534
    .local v2, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "method"

    const-string v5, "facebook.photos.upload"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    const-string v4, "api_key"

    iget-object v5, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mApi_key:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    const-string v4, "v"

    const-string v5, "1.0"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    const-string v4, "call_id"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    const-string v4, "session_key"

    iget-object v5, p0, Lcom/htc/socialnetwork/facebook/FacebookClient;->facebookInterface:Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;

    invoke-virtual {v5}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getSession()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    const-string v4, "aid"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    const-string v4, "aid"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 541
    .local v0, a:Ljava/lang/String;
    const-string v4, "caption"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 542
    .local v1, caption:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 543
    const-string v4, "aid"

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    :cond_0
    if-eqz v1, :cond_1

    .line 545
    const-string v4, "caption"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    :cond_1
    iget-object v4, p0, Lcom/htc/socialnetwork/facebook/FacebookClient;->facebookInterface:Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;

    invoke-virtual {v4}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->getSessionSecret()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->generateSignature(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 549
    .local v3, signature:Ljava/lang/String;
    const-string v4, "sig"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    .end local v0           #a:Ljava/lang/String;
    .end local v1           #caption:Ljava/lang/String;
    .end local v2           #params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3           #signature:Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getUploadResponseMsg(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 14
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 563
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v6

    .line 564
    .local v6, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 567
    :try_start_0
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 568
    .local v1, builder:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    const-string v13, "UTF-8"

    invoke-direct {v12, p1, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v7, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 570
    .local v7, in:Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 571
    .local v0, buffer:Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .line 573
    .local v8, insideTagBody:Z
    :goto_0
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .local v9, line:Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 574
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    const-string v13, "<"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    const-string v12, ">"

    invoke-virtual {v9, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 575
    const/4 v8, 0x1

    .line 576
    :cond_0
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    const-string v13, ">"

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 577
    const/4 v8, 0x0

    .line 578
    :cond_1
    if-eqz v8, :cond_2

    .line 579
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 573
    :cond_2
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 626
    .end local v0           #buffer:Ljava/lang/StringBuilder;
    .end local v1           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v7           #in:Ljava/io/BufferedReader;
    .end local v8           #insideTagBody:Z
    .end local v9           #line:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 627
    .local v5, ex:Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v12, Ljava/lang/RuntimeException;

    const-string v13, "Trouble configuring XML Parser"

    invoke-direct {v12, v13, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 582
    .end local v5           #ex:Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v0       #buffer:Ljava/lang/StringBuilder;
    .restart local v1       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v7       #in:Ljava/io/BufferedReader;
    .restart local v8       #insideTagBody:Z
    .restart local v9       #line:Ljava/lang/String;
    :cond_3
    if-eqz v7, :cond_4

    .line 583
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 586
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 587
    .local v11, xmlResp:Ljava/lang/String;
    new-instance v12, Ljava/io/ByteArrayInputStream;

    const-string v13, "UTF-8"

    invoke-virtual {v11, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v12}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 589
    .local v2, doc:Lorg/w3c/dom/Document;
    invoke-static {v2}, Lcom/htc/socialnetwork/facebook/FacebookClient;->stripEmptyTextNodes(Lorg/w3c/dom/Node;)V

    .line 590
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "facebook.photos.upload"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "| "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Lcom/htc/socialnetwork/facebook/FacebookClient;->printDom(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    .line 593
    const-string v12, "photos_upload_response"

    invoke-interface {v2, v12}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 595
    .local v10, success:Lorg/w3c/dom/NodeList;
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-lez v12, :cond_5

    .line 596
    const-string v12, "ok"

    .line 617
    :goto_1
    return-object v12

    .line 597
    :cond_5
    const-string v12, "error_response"

    invoke-interface {v2, v12}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 598
    .local v4, errors:Lorg/w3c/dom/NodeList;
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-lez v12, :cond_6

    .line 600
    const/4 v12, 0x0

    invoke-interface {v4, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-static {v12}, Lcom/htc/socialnetwork/facebook/FacebookClient;->getTextContent(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 602
    .local v3, errorCode:I
    sparse-switch v3, :sswitch_data_0

    .line 617
    const-string v12, "err:8001"

    goto :goto_1

    .line 604
    :sswitch_0
    const-string v12, "err:8001"

    goto :goto_1

    .line 606
    :sswitch_1
    const-string v12, "err:8002"

    goto :goto_1

    .line 608
    :sswitch_2
    iget-object v12, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mDataHelper:Lcom/htc/socialnetwork/SocialNetworkDataHelper;

    invoke-virtual {v12}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->removeActiveAccount()Z

    .line 609
    const-string v12, "err:8005"

    goto :goto_1

    .line 611
    :sswitch_3
    const-string v12, "err:8004"

    goto :goto_1

    .line 613
    :sswitch_4
    const-string v12, "err:8007"

    goto :goto_1

    .line 615
    :sswitch_5
    const-string v12, "err:8009"

    goto :goto_1

    .line 625
    .end local v3           #errorCode:I
    :cond_6
    new-instance v12, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v13, 0x7e1

    invoke-direct {v12, v13}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v12
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_3

    .line 628
    .end local v0           #buffer:Ljava/lang/StringBuilder;
    .end local v1           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v2           #doc:Lorg/w3c/dom/Document;
    .end local v4           #errors:Lorg/w3c/dom/NodeList;
    .end local v7           #in:Ljava/io/BufferedReader;
    .end local v8           #insideTagBody:Z
    .end local v9           #line:Ljava/lang/String;
    .end local v10           #success:Lorg/w3c/dom/NodeList;
    .end local v11           #xmlResp:Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 629
    .local v5, ex:Ljava/io/UnsupportedEncodingException;
    new-instance v12, Ljava/lang/RuntimeException;

    const-string v13, "Trouble configuring XML Parser"

    invoke-direct {v12, v13, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 630
    .end local v5           #ex:Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v5

    .line 631
    .local v5, ex:Ljava/io/IOException;
    new-instance v12, Ljava/lang/RuntimeException;

    const-string v13, "Trouble configuring XML Parser"

    invoke-direct {v12, v13, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 632
    .end local v5           #ex:Ljava/io/IOException;
    :catch_3
    move-exception v5

    .line 633
    .local v5, ex:Lorg/xml/sax/SAXException;
    new-instance v12, Ljava/lang/RuntimeException;

    const-string v13, "Trouble parsing XML from facebook"

    invoke-direct {v12, v13, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 602
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x66 -> :sswitch_2
        0x78 -> :sswitch_3
        0x141 -> :sswitch_4
        0x144 -> :sswitch_5
    .end sparse-switch
.end method

.method public getUploadUrl()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 642
    const-string v0, "http://api.facebook.com/restserver.php"

    return-object v0
.end method

.method protected logout()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 650
    iget-object v0, p0, Lcom/htc/socialnetwork/facebook/FacebookClient;->facebookInterface:Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;

    invoke-virtual {v0}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->logout()Z

    move-result v0

    return v0
.end method

.method protected refreshData()V
    .locals 4

    .prologue
    .line 661
    :try_start_0
    iget-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mDataHelper:Lcom/htc/socialnetwork/SocialNetworkDataHelper;

    invoke-virtual {v2}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 662
    .local v0, session:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 663
    :cond_0
    iget-object v2, p0, Lcom/htc/socialnetwork/facebook/FacebookClient;->facebookInterface:Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;

    invoke-virtual {v2}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->cleanSession()V

    .line 669
    .end local v0           #session:Ljava/lang/String;
    :goto_0
    return-void

    .line 665
    .restart local v0       #session:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/htc/socialnetwork/facebook/FacebookClient;->facebookInterface:Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;

    invoke-virtual {v2, v0}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->updateSession(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/htc/socialnetwork/SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 666
    .end local v0           #session:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 667
    .local v1, sne:Lcom/htc/socialnetwork/SocialNetworkException;
    const-string v2, "SocialNetwork-FacebookClient"

    invoke-virtual {v1}, Lcom/htc/socialnetwork/SocialNetworkException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPhotoFavorite(Ljava/lang/String;Z)V
    .locals 1
    .parameter "pid"
    .parameter "like"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 886
    iget-object v0, p0, Lcom/htc/socialnetwork/facebook/FacebookClient;->facebookInterface:Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;

    invoke-virtual {v0, p1, p2}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->setLike(Ljava/lang/String;Z)V

    .line 888
    return-void
.end method

.method protected updateStatus(Ljava/lang/String;)Z
    .locals 1
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/AuthenticationException;,
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    .prologue
    .line 677
    iget-object v0, p0, Lcom/htc/socialnetwork/facebook/FacebookClient;->facebookInterface:Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;

    invoke-virtual {v0, p1}, Lcom/htc/socialnetwork/facebook/SimpleFacebookInterface;->setStatus(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
