.class Lcom/htc/painting/penmenu/PenMenu$SignatureState;
.super Lcom/htc/painting/penmenu/action/ActionState;
.source "PenMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/penmenu/PenMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SignatureState"
.end annotation


# instance fields
.field mIcons:[I

.field private mState:I

.field final synthetic this$0:Lcom/htc/painting/penmenu/PenMenu;


# direct methods
.method public constructor <init>(Lcom/htc/painting/penmenu/PenMenu;Lcom/htc/painting/penmenu/action/ActionItem;I[I)V
    .locals 1
    .parameter
    .parameter "item"
    .parameter "initState"
    .parameter "resIds"

    .prologue
    .line 2276
    iput-object p1, p0, Lcom/htc/painting/penmenu/PenMenu$SignatureState;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-direct {p0}, Lcom/htc/painting/penmenu/action/ActionState;-><init>()V

    .line 2273
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/painting/penmenu/PenMenu$SignatureState;->mState:I

    .line 2277
    iput p3, p0, Lcom/htc/painting/penmenu/PenMenu$SignatureState;->mState:I

    .line 2278
    iput-object p4, p0, Lcom/htc/painting/penmenu/PenMenu$SignatureState;->mIcons:[I

    .line 2279
    invoke-virtual {p0, p2}, Lcom/htc/painting/penmenu/PenMenu$SignatureState;->changeState(Lcom/htc/painting/penmenu/action/ActionItem;)V

    .line 2280
    return-void
.end method


# virtual methods
.method public changeState(Lcom/htc/painting/penmenu/action/ActionItem;)V
    .locals 5
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 2284
    iget v2, p0, Lcom/htc/painting/penmenu/PenMenu$SignatureState;->mState:I

    if-ne v2, v3, :cond_0

    .line 2285
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/painting/penmenu/PenMenu$SignatureState;->mState:I

    .line 2290
    :goto_0
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu$SignatureState;->mIcons:[I

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu$SignatureState;->mIcons:[I

    array-length v2, v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    .line 2291
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu$SignatureState;->mIcons:[I

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    new-array v1, v2, [Landroid/graphics/Bitmap;

    .line 2292
    .local v1, icons:[Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 2293
    iget-object v2, p0, Lcom/htc/painting/penmenu/PenMenu$SignatureState;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    iget-object v3, p0, Lcom/htc/painting/penmenu/PenMenu$SignatureState;->mIcons:[I

    iget v4, p0, Lcom/htc/painting/penmenu/PenMenu$SignatureState;->mState:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v4, v0

    aget v3, v3, v4

    #calls: Lcom/htc/painting/penmenu/PenMenu;->getIcon(I)Landroid/graphics/Bitmap;
    invoke-static {v2, v3}, Lcom/htc/painting/penmenu/PenMenu;->access$1600(Lcom/htc/painting/penmenu/PenMenu;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v0

    .line 2292
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2288
    .end local v0           #i:I
    .end local v1           #icons:[Landroid/graphics/Bitmap;
    :cond_0
    iput v3, p0, Lcom/htc/painting/penmenu/PenMenu$SignatureState;->mState:I

    goto :goto_0

    .line 2295
    .restart local v0       #i:I
    .restart local v1       #icons:[Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p1, v1}, Lcom/htc/painting/penmenu/action/ActionItem;->setIcons([Landroid/graphics/Bitmap;)V

    .line 2297
    .end local v0           #i:I
    .end local v1           #icons:[Landroid/graphics/Bitmap;
    :cond_2
    return-void
.end method

.method public toInteger()I
    .locals 1

    .prologue
    .line 2301
    iget v0, p0, Lcom/htc/painting/penmenu/PenMenu$SignatureState;->mState:I

    return v0
.end method
