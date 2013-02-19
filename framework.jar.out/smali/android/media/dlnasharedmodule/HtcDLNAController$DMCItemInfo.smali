.class public Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;
.super Ljava/lang/Object;
.source "HtcDLNAController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/dlnasharedmodule/HtcDLNAController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DMCItemInfo"
.end annotation


# instance fields
.field public lCount:J

.field public lCurrentIndex:J

.field public lDuration:J

.field public szAlbum:Ljava/lang/String;

.field public szArtist:Ljava/lang/String;

.field public szDate:Ljava/lang/String;

.field public szThumbPath:Ljava/lang/String;

.field public szTitle:Ljava/lang/String;

.field final synthetic this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;


# direct methods
.method public constructor <init>(Landroid/media/dlnasharedmodule/HtcDLNAController;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I
    .locals 7
    .parameter "options"
    .parameter "target"

    .prologue
    const/4 v5, 0x1

    .line 232
    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 233
    .local v4, w:I
    iget v3, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 235
    .local v3, h:I
    div-int v2, v4, p2

    .line 236
    .local v2, candidateW:I
    div-int v1, v3, p2

    .line 237
    .local v1, candidateH:I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 239
    .local v0, candidate:I
    if-nez v0, :cond_0

    .line 252
    :goto_0
    return v5

    .line 242
    :cond_0
    if-le v0, v5, :cond_1

    .line 243
    if-le v4, p2, :cond_1

    div-int v6, v4, v0

    if-ge v6, p2, :cond_1

    .line 244
    add-int/lit8 v0, v0, -0x1

    .line 247
    :cond_1
    if-le v0, v5, :cond_2

    .line 248
    if-le v3, p2, :cond_2

    div-int v5, v3, v0

    if-ge v5, p2, :cond_2

    .line 249
    add-int/lit8 v0, v0, -0x1

    :cond_2
    move v5, v0

    .line 252
    goto :goto_0
.end method

.method protected loadInfo()V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method protected refreshAlbumArt()V
    .locals 3

    .prologue
    .line 202
    const-string v0, "[HtcDLNAController]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refreshAlbumArt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->szThumbPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method protected refreshInfo()V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method protected refreshListIndex()V
    .locals 12

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x1

    .line 371
    const-string v8, "[HtcDLNAController]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "refreshListIndex cur mode:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurMode:I
    invoke-static {v10}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$000(Landroid/media/dlnasharedmodule/HtcDLNAController;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v8, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurMode:I
    invoke-static {v8}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$000(Landroid/media/dlnasharedmodule/HtcDLNAController;)I

    move-result v8

    if-eqz v8, :cond_0

    iget-wide v8, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->lCount:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gtz v8, :cond_2

    .line 373
    :cond_0
    iget-object v8, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    const-string v9, ""

    #setter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mszListIndex:Ljava/lang/String;
    invoke-static {v8, v9}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$102(Landroid/media/dlnasharedmodule/HtcDLNAController;Ljava/lang/String;)Ljava/lang/String;

    .line 385
    :goto_0
    :try_start_0
    iget-object v8, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurSource:I
    invoke-static {v8}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$200(Landroid/media/dlnasharedmodule/HtcDLNAController;)I

    move-result v8

    if-nez v8, :cond_5

    .line 386
    iget-object v8, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v8}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$500(Landroid/media/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v8

    iget-object v9, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I
    invoke-static {v9}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$300(Landroid/media/dlnasharedmodule/HtcDLNAController;)I

    move-result v9

    iget-object v10, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;
    invoke-static {v10}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$400(Landroid/media/dlnasharedmodule/HtcDLNAController;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCCurrentLocalPlayIndex(ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 388
    .local v3, nCurIndexID:I
    const/4 v8, -0x1

    if-ne v3, v8, :cond_3

    .line 432
    .end local v3           #nCurIndexID:I
    :cond_1
    :goto_1
    return-void

    .line 375
    :cond_2
    iget-object v8, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v10, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->lCurrentIndex:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->lCount:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #setter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mszListIndex:Ljava/lang/String;
    invoke-static {v8, v9}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$102(Landroid/media/dlnasharedmodule/HtcDLNAController;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 390
    .restart local v3       #nCurIndexID:I
    :cond_3
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 392
    .local v6, szCurIndexID:Ljava/lang/String;
    const-string v8, "[HtcDLNAController]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ML curContent(indexid):"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v8, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    iget-object v8, v8, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurContentID:Ljava/lang/String;

    if-eq v8, v6, :cond_4

    move v1, v0

    .line 395
    .local v1, bCteChanged:Z
    :goto_2
    if-eqz v1, :cond_1

    .line 396
    iget-object v7, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    iput-object v6, v7, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurContentID:Ljava/lang/String;

    .line 397
    iget-object v7, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    #setter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurIndex:I
    invoke-static {v7, v8}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$602(Landroid/media/dlnasharedmodule/HtcDLNAController;I)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 424
    .end local v1           #bCteChanged:Z
    .end local v3           #nCurIndexID:I
    .end local v6           #szCurIndexID:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 425
    .local v2, e:Ljava/lang/NullPointerException;
    iget-object v7, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #calls: Landroid/media/dlnasharedmodule/HtcDLNAController;->isServiceHealthy()Z
    invoke-static {v7}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$800(Landroid/media/dlnasharedmodule/HtcDLNAController;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 426
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .end local v2           #e:Ljava/lang/NullPointerException;
    .restart local v3       #nCurIndexID:I
    .restart local v6       #szCurIndexID:Ljava/lang/String;
    :cond_4
    move v1, v7

    .line 394
    goto :goto_2

    .line 400
    .end local v3           #nCurIndexID:I
    .end local v6           #szCurIndexID:Ljava/lang/String;
    :cond_5
    :try_start_2
    iget-object v8, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurSource:I
    invoke-static {v8}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$200(Landroid/media/dlnasharedmodule/HtcDLNAController;)I

    move-result v8

    if-ne v8, v0, :cond_1

    .line 401
    iget-object v8, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v8}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$500(Landroid/media/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v8

    iget-object v9, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I
    invoke-static {v9}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$300(Landroid/media/dlnasharedmodule/HtcDLNAController;)I

    move-result v9

    iget-object v10, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;
    invoke-static {v10}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$400(Landroid/media/dlnasharedmodule/HtcDLNAController;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCCurrentContentID(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 403
    .local v5, szCurContentID:Ljava/lang/String;
    iget-object v8, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {v8}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$500(Landroid/media/dlnasharedmodule/HtcDLNAController;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v8

    iget-object v9, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurCookie:I
    invoke-static {v9}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$300(Landroid/media/dlnasharedmodule/HtcDLNAController;)I

    move-result v9

    iget-object v10, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #getter for: Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurDMRID:Ljava/lang/String;
    invoke-static {v10}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$400(Landroid/media/dlnasharedmodule/HtcDLNAController;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCCurrentContainerID(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 406
    .local v4, szCurContainerID:Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 411
    iget-object v8, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    iget-object v8, v8, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurContentID:Ljava/lang/String;

    if-eq v8, v5, :cond_9

    move v1, v0

    .line 412
    .restart local v1       #bCteChanged:Z
    :goto_3
    iget-object v8, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    iget-object v8, v8, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurContainerID:Ljava/lang/String;

    if-eq v8, v4, :cond_a

    .line 414
    .local v0, bCtaChanged:Z
    :goto_4
    const-string v7, "[HtcDLNAController]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ML curContent:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string v7, "[HtcDLNAController]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ML curContainer:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/media/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    if-eqz v1, :cond_6

    .line 418
    iget-object v7, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    iput-object v5, v7, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurContentID:Ljava/lang/String;

    .line 419
    :cond_6
    if-eqz v0, :cond_7

    .line 420
    iget-object v7, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    iput-object v4, v7, Landroid/media/dlnasharedmodule/HtcDLNAController;->mCurContainerID:Ljava/lang/String;

    .line 421
    :cond_7
    if-nez v1, :cond_8

    if-eqz v0, :cond_1

    .line 422
    :cond_8
    iget-object v7, p0, Landroid/media/dlnasharedmodule/HtcDLNAController$DMCItemInfo;->this$0:Landroid/media/dlnasharedmodule/HtcDLNAController;

    #calls: Landroid/media/dlnasharedmodule/HtcDLNAController;->SavePref()Z
    invoke-static {v7}, Landroid/media/dlnasharedmodule/HtcDLNAController;->access$700(Landroid/media/dlnasharedmodule/HtcDLNAController;)Z
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 427
    .end local v0           #bCtaChanged:Z
    .end local v1           #bCteChanged:Z
    .end local v4           #szCurContainerID:Ljava/lang/String;
    .end local v5           #szCurContentID:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 429
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v4       #szCurContainerID:Ljava/lang/String;
    .restart local v5       #szCurContentID:Ljava/lang/String;
    :cond_9
    move v1, v7

    .line 411
    goto :goto_3

    .restart local v1       #bCteChanged:Z
    :cond_a
    move v0, v7

    .line 412
    goto :goto_4
.end method

.method protected saveInfo()V
    .locals 0

    .prologue
    .line 148
    return-void
.end method
