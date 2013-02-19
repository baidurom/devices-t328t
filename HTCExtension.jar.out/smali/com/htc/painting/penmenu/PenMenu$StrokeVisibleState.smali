.class Lcom/htc/painting/penmenu/PenMenu$StrokeVisibleState;
.super Lcom/htc/painting/penmenu/action/ActionState;
.source "PenMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/penmenu/PenMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StrokeVisibleState"
.end annotation


# instance fields
.field private mState:I

.field final synthetic this$0:Lcom/htc/painting/penmenu/PenMenu;


# direct methods
.method public constructor <init>(Lcom/htc/painting/penmenu/PenMenu;Lcom/htc/painting/penmenu/action/ActionItem;I)V
    .locals 1
    .parameter
    .parameter "item"
    .parameter "state"

    .prologue
    .line 2215
    iput-object p1, p0, Lcom/htc/painting/penmenu/PenMenu$StrokeVisibleState;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-direct {p0}, Lcom/htc/painting/penmenu/action/ActionState;-><init>()V

    .line 2213
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/painting/penmenu/PenMenu$StrokeVisibleState;->mState:I

    .line 2216
    iput p3, p0, Lcom/htc/painting/penmenu/PenMenu$StrokeVisibleState;->mState:I

    .line 2217
    #setter for: Lcom/htc/painting/penmenu/PenMenu;->mStrokeVisibility:I
    invoke-static {p1, p3}, Lcom/htc/painting/penmenu/PenMenu;->access$1502(Lcom/htc/painting/penmenu/PenMenu;I)I

    .line 2219
    invoke-direct {p0, p2}, Lcom/htc/painting/penmenu/PenMenu$StrokeVisibleState;->changeIcon(Lcom/htc/painting/penmenu/action/ActionItem;)V

    .line 2220
    return-void
.end method

.method private changeIcon(Lcom/htc/painting/penmenu/action/ActionItem;)V
    .locals 7
    .parameter "item"

    .prologue
    .line 2223
    const v2, 0x207000d

    .line 2224
    .local v2, iconArrayId:I
    iget v5, p0, Lcom/htc/painting/penmenu/PenMenu$StrokeVisibleState;->mState:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 2225
    const v2, 0x207000d

    .line 2231
    :goto_0
    iget-object v5, p0, Lcom/htc/painting/penmenu/PenMenu$StrokeVisibleState;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v5}, Lcom/htc/painting/penmenu/PenMenu;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 2233
    .local v1, iconArray:Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v5

    new-array v3, v5, [Landroid/graphics/Bitmap;

    .line 2234
    .local v3, icons:[Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 2235
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 2236
    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v3, v4

    .line 2234
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2228
    .end local v0           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v1           #iconArray:Landroid/content/res/TypedArray;
    .end local v3           #icons:[Landroid/graphics/Bitmap;
    .end local v4           #j:I
    :cond_0
    const v2, 0x207000e

    goto :goto_0

    .line 2238
    .restart local v1       #iconArray:Landroid/content/res/TypedArray;
    .restart local v3       #icons:[Landroid/graphics/Bitmap;
    .restart local v4       #j:I
    :cond_1
    invoke-virtual {p1, v3}, Lcom/htc/painting/penmenu/action/ActionItem;->setIcons([Landroid/graphics/Bitmap;)V

    .line 2240
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2241
    return-void
.end method


# virtual methods
.method public changeState(Lcom/htc/painting/penmenu/action/ActionItem;)V
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2245
    iget v0, p0, Lcom/htc/painting/penmenu/PenMenu$StrokeVisibleState;->mState:I

    if-ne v0, v1, :cond_0

    .line 2246
    iput v2, p0, Lcom/htc/painting/penmenu/PenMenu$StrokeVisibleState;->mState:I

    .line 2247
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu$StrokeVisibleState;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #setter for: Lcom/htc/painting/penmenu/PenMenu;->mStrokeVisibility:I
    invoke-static {v0, v2}, Lcom/htc/painting/penmenu/PenMenu;->access$1502(Lcom/htc/painting/penmenu/PenMenu;I)I

    .line 2254
    :goto_0
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu/PenMenu$StrokeVisibleState;->changeIcon(Lcom/htc/painting/penmenu/action/ActionItem;)V

    .line 2255
    return-void

    .line 2250
    :cond_0
    iput v1, p0, Lcom/htc/painting/penmenu/PenMenu$StrokeVisibleState;->mState:I

    .line 2251
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu$StrokeVisibleState;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #setter for: Lcom/htc/painting/penmenu/PenMenu;->mStrokeVisibility:I
    invoke-static {v0, v1}, Lcom/htc/painting/penmenu/PenMenu;->access$1502(Lcom/htc/painting/penmenu/PenMenu;I)I

    goto :goto_0
.end method

.method public toInteger()I
    .locals 1

    .prologue
    .line 2259
    iget v0, p0, Lcom/htc/painting/penmenu/PenMenu$StrokeVisibleState;->mState:I

    return v0
.end method
