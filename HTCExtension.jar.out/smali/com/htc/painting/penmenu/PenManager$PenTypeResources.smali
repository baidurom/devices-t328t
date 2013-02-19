.class Lcom/htc/painting/penmenu/PenManager$PenTypeResources;
.super Ljava/lang/Object;
.source "PenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/penmenu/PenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PenTypeResources"
.end annotation


# instance fields
.field public mCurrentPen:Lcom/htc/painting/penmenu/Pen;

.field public mHistoryPenList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu/Pen;",
            ">;"
        }
    .end annotation
.end field

.field public mMostRecentConfig:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu/Pen;",
            ">;"
        }
    .end annotation
.end field

.field public mPenTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu/PenType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 401
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 406
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu/PenManager$PenTypeResources;->mPenTypeList:Ljava/util/List;

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu/PenManager$PenTypeResources;->mMostRecentConfig:Ljava/util/List;

    .line 421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu/PenManager$PenTypeResources;->mHistoryPenList:Ljava/util/List;

    return-void
.end method
