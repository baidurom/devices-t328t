.class Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;
.super Ljava/lang/Object;
.source "CarouselHost.java"

# interfaces
.implements Lcom/htc/widget/CarouselHost$IndicatorStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/CarouselHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LabelAndIconIndicatorStategy"
.end annotation


# instance fields
.field private final mIconReource:Landroid/content/Intent$ShortcutIconResource;

.field private mLabelResource:Landroid/content/Intent$ShortcutIconResource;

.field private final mOverylayResource:Landroid/content/Intent$ShortcutIconResource;

.field private final mSelectedIconResource:Landroid/content/Intent$ShortcutIconResource;

.field final synthetic this$0:Lcom/htc/widget/CarouselHost;


# direct methods
.method private constructor <init>(Lcom/htc/widget/CarouselHost;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "label"
    .parameter "icon"
    .parameter "selectedIcon"
    .parameter "overlay"
    .parameter "tag"

    .prologue
    .line 1012
    iput-object p1, p0, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->this$0:Lcom/htc/widget/CarouselHost;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1013
    #setter for: Lcom/htc/widget/CarouselHost;->mTag:Ljava/lang/Object;
    invoke-static {p1, p6}, Lcom/htc/widget/CarouselHost;->access$1002(Lcom/htc/widget/CarouselHost;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    iput-object p3, p0, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->mIconReource:Landroid/content/Intent$ShortcutIconResource;

    .line 1015
    iput-object p4, p0, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->mSelectedIconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 1016
    iput-object p5, p0, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->mOverylayResource:Landroid/content/Intent$ShortcutIconResource;

    .line 1017
    iput-object p2, p0, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->mLabelResource:Landroid/content/Intent$ShortcutIconResource;

    .line 1018
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/CarouselHost;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Ljava/lang/String;Lcom/htc/widget/CarouselHost$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 1006
    invoke-direct/range {p0 .. p6}, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;-><init>(Lcom/htc/widget/CarouselHost;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->mLabelResource:Landroid/content/Intent$ShortcutIconResource;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->mIconReource:Landroid/content/Intent$ShortcutIconResource;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->mSelectedIconResource:Landroid/content/Intent$ShortcutIconResource;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;)Landroid/content/Intent$ShortcutIconResource;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->mOverylayResource:Landroid/content/Intent$ShortcutIconResource;

    return-object v0
.end method


# virtual methods
.method public createIndicatorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1025
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1031
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LabelAndIconIndicatorStategy[mLabelResource = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->mLabelResource:Landroid/content/Intent$ShortcutIconResource;

    invoke-virtual {v1}, Landroid/content/Intent$ShortcutIconResource;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mIconReource = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->mIconReource:Landroid/content/Intent$ShortcutIconResource;

    invoke-virtual {v1}, Landroid/content/Intent$ShortcutIconResource;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mSelectedIconResource = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->mSelectedIconResource:Landroid/content/Intent$ShortcutIconResource;

    invoke-virtual {v1}, Landroid/content/Intent$ShortcutIconResource;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mOverylayResource = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;->mOverylayResource:Landroid/content/Intent$ShortcutIconResource;

    invoke-virtual {v1}, Landroid/content/Intent$ShortcutIconResource;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
