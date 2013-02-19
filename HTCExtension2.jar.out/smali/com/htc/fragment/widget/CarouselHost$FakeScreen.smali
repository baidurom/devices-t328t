.class Lcom/htc/fragment/widget/CarouselHost$FakeScreen;
.super Landroid/widget/TextView;
.source "CarouselHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fragment/widget/CarouselHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FakeScreen"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fragment/widget/CarouselHost;


# direct methods
.method public constructor <init>(Lcom/htc/fragment/widget/CarouselHost;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 1440
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselHost$FakeScreen;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    .line 1441
    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1444
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost$FakeScreen;->mContext:Landroid/content/Context;

    const v1, 0x2030052

    invoke-virtual {p0, v0, v1}, Lcom/htc/fragment/widget/CarouselHost$FakeScreen;->setTextAppearance(Landroid/content/Context;I)V

    .line 1445
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost$FakeScreen;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/htc/fragment/widget/CarouselSkinUtil;->setDarkShadow(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 1446
    const v0, 0x2080182

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselHost$FakeScreen;->setBackgroundResource(I)V

    .line 1447
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselHost$FakeScreen;->setGravity(I)V

    .line 1448
    return-void
.end method
