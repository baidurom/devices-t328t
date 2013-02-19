.class Lcom/htc/fragment/widget/FastScroller$CountObserver;
.super Landroid/database/DataSetObserver;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fragment/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CountObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fragment/widget/FastScroller;


# direct methods
.method private constructor <init>(Lcom/htc/fragment/widget/FastScroller;)V
    .locals 0
    .parameter

    .prologue
    .line 405
    iput-object p1, p0, Lcom/htc/fragment/widget/FastScroller$CountObserver;->this$0:Lcom/htc/fragment/widget/FastScroller;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/fragment/widget/FastScroller;Lcom/htc/fragment/widget/FastScroller$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 405
    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/FastScroller$CountObserver;-><init>(Lcom/htc/fragment/widget/FastScroller;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .prologue
    .line 414
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller$CountObserver;->this$0:Lcom/htc/fragment/widget/FastScroller;

    iget-object v1, p0, Lcom/htc/fragment/widget/FastScroller$CountObserver;->this$0:Lcom/htc/fragment/widget/FastScroller;

    iget-object v1, v1, Lcom/htc/fragment/widget/FastScroller;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/fragment/widget/FastScroller$CountObserver;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/htc/fragment/widget/FastScroller;->access$100(Lcom/htc/fragment/widget/FastScroller;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    #calls: Lcom/htc/fragment/widget/FastScroller;->useThumbDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    invoke-static {v0, v1, v2}, Lcom/htc/fragment/widget/FastScroller;->access$200(Lcom/htc/fragment/widget/FastScroller;Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 415
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 422
    return-void
.end method
