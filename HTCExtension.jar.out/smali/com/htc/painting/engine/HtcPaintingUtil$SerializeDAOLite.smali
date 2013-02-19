.class Lcom/htc/painting/engine/HtcPaintingUtil$SerializeDAOLite;
.super Lcom/htc/painting/engine/AbsSerializeDAO;
.source "HtcPaintingUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/engine/HtcPaintingUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializeDAOLite"
.end annotation


# instance fields
.field mCoreData:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 554
    invoke-direct {p0}, Lcom/htc/painting/engine/AbsSerializeDAO;-><init>()V

    .line 556
    return-void
.end method


# virtual methods
.method public delete(I)V
    .locals 0
    .parameter "groupId"

    .prologue
    .line 578
    return-void
.end method

.method public deleteAll()V
    .locals 0

    .prologue
    .line 584
    return-void
.end method

.method public load(I)[B
    .locals 1
    .parameter "groupId"

    .prologue
    .line 565
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingUtil$SerializeDAOLite;->mCoreData:[B

    return-object v0
.end method

.method public save(I[B)V
    .locals 0
    .parameter "groupId"
    .parameter "byteArray"

    .prologue
    .line 572
    return-void
.end method

.method public setCoreData([B)V
    .locals 0
    .parameter "coreData"

    .prologue
    .line 587
    iput-object p1, p0, Lcom/htc/painting/engine/HtcPaintingUtil$SerializeDAOLite;->mCoreData:[B

    .line 588
    return-void
.end method
