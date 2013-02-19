.class Lcom/htc/painting/penmenu15/transition/ViewConfig$ViewConfigRow;
.super Ljava/lang/Object;
.source "ViewConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/penmenu15/transition/ViewConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewConfigRow"
.end annotation


# instance fields
.field private mInEffect:Landroid/view/animation/Animation;

.field private mOutEffect:Landroid/view/animation/Animation;

.field private mView:Landroid/view/View;

.field private mVisibility:I


# direct methods
.method private constructor <init>(Landroid/view/View;ILandroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "view"
    .parameter "visibility"
    .parameter "in"
    .parameter "out"

    .prologue
    .line 120
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/htc/painting/penmenu15/transition/ViewConfig$ViewConfigRow;->mView:Landroid/view/View;

    .line 122
    iput p2, p0, Lcom/htc/painting/penmenu15/transition/ViewConfig$ViewConfigRow;->mVisibility:I

    .line 123
    iput-object p3, p0, Lcom/htc/painting/penmenu15/transition/ViewConfig$ViewConfigRow;->mInEffect:Landroid/view/animation/Animation;

    .line 124
    iput-object p4, p0, Lcom/htc/painting/penmenu15/transition/ViewConfig$ViewConfigRow;->mOutEffect:Landroid/view/animation/Animation;

    .line 125
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;ILandroid/view/animation/Animation;Landroid/view/animation/Animation;Lcom/htc/painting/penmenu15/transition/ViewConfig$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 114
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/painting/penmenu15/transition/ViewConfig$ViewConfigRow;-><init>(Landroid/view/View;ILandroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/painting/penmenu15/transition/ViewConfig$ViewConfigRow;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/htc/painting/penmenu15/transition/ViewConfig$ViewConfigRow;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/painting/penmenu15/transition/ViewConfig$ViewConfigRow;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/htc/painting/penmenu15/transition/ViewConfig$ViewConfigRow;->mInEffect:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/painting/penmenu15/transition/ViewConfig$ViewConfigRow;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/htc/painting/penmenu15/transition/ViewConfig$ViewConfigRow;->mOutEffect:Landroid/view/animation/Animation;

    return-object v0
.end method
