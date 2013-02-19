.class Lcom/htc/widget/CarouselActivity$CubeSurfaceView;
.super Landroid/view/SurfaceView;
.source "CarouselActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/CarouselActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CubeSurfaceView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/CarouselActivity;


# direct methods
.method public constructor <init>(Lcom/htc/widget/CarouselActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 609
    iput-object p1, p0, Lcom/htc/widget/CarouselActivity$CubeSurfaceView;->this$0:Lcom/htc/widget/CarouselActivity;

    .line 610
    invoke-direct {p0, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 611
    return-void
.end method


# virtual methods
.method public isOpaque()Z
    .locals 1

    .prologue
    .line 618
    const/4 v0, 0x0

    return v0
.end method
