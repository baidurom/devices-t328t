.class Lcom/htc/widget/CarouselHost$TabSpec;
.super Ljava/lang/Object;
.source "CarouselHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/CarouselHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabSpec"
.end annotation


# instance fields
.field private mContentStrategy:Lcom/htc/widget/CarouselHost$ContentStrategy;

.field private mIndicatorStrategy:Lcom/htc/widget/CarouselHost$IndicatorStrategy;

.field private mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/widget/CarouselHost;


# direct methods
.method private constructor <init>(Lcom/htc/widget/CarouselHost;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "tag"

    .prologue
    .line 903
    iput-object p1, p0, Lcom/htc/widget/CarouselHost$TabSpec;->this$0:Lcom/htc/widget/CarouselHost;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 904
    iput-object p2, p0, Lcom/htc/widget/CarouselHost$TabSpec;->mTag:Ljava/lang/String;

    .line 905
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/CarouselHost;Ljava/lang/String;Lcom/htc/widget/CarouselHost$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 897
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/CarouselHost$TabSpec;-><init>(Lcom/htc/widget/CarouselHost;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/widget/CarouselHost$TabSpec;)Lcom/htc/widget/CarouselHost$IndicatorStrategy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 897
    iget-object v0, p0, Lcom/htc/widget/CarouselHost$TabSpec;->mIndicatorStrategy:Lcom/htc/widget/CarouselHost$IndicatorStrategy;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/widget/CarouselHost$TabSpec;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 897
    iget-object v0, p0, Lcom/htc/widget/CarouselHost$TabSpec;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/widget/CarouselHost$TabSpec;)Lcom/htc/widget/CarouselHost$ContentStrategy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 897
    iget-object v0, p0, Lcom/htc/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/widget/CarouselHost$ContentStrategy;

    return-object v0
.end method


# virtual methods
.method public doClean()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 935
    iget-object v0, p0, Lcom/htc/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/widget/CarouselHost$ContentStrategy;

    invoke-interface {v0}, Lcom/htc/widget/CarouselHost$ContentStrategy;->tabRemoved()V

    .line 936
    iput-object v1, p0, Lcom/htc/widget/CarouselHost$TabSpec;->mTag:Ljava/lang/String;

    .line 938
    iput-object v1, p0, Lcom/htc/widget/CarouselHost$TabSpec;->mIndicatorStrategy:Lcom/htc/widget/CarouselHost$IndicatorStrategy;

    .line 939
    iput-object v1, p0, Lcom/htc/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/widget/CarouselHost$ContentStrategy;

    .line 940
    return-void
.end method

.method getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 928
    iget-object v0, p0, Lcom/htc/widget/CarouselHost$TabSpec;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Landroid/content/Intent;)Lcom/htc/widget/CarouselHost$TabSpec;
    .locals 4
    .parameter "intent"

    .prologue
    .line 919
    new-instance v0, Lcom/htc/widget/CarouselHost$IntentContentStrategy;

    iget-object v1, p0, Lcom/htc/widget/CarouselHost$TabSpec;->this$0:Lcom/htc/widget/CarouselHost;

    iget-object v2, p0, Lcom/htc/widget/CarouselHost$TabSpec;->mTag:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/htc/widget/CarouselHost$IntentContentStrategy;-><init>(Lcom/htc/widget/CarouselHost;Ljava/lang/String;Landroid/content/Intent;Lcom/htc/widget/CarouselHost$1;)V

    iput-object v0, p0, Lcom/htc/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/widget/CarouselHost$ContentStrategy;

    .line 920
    return-object p0
.end method

.method public setIndicator(Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;)Lcom/htc/widget/CarouselHost$TabSpec;
    .locals 8
    .parameter "label"
    .parameter "icon"
    .parameter "selectedIcon"
    .parameter "showIcon"

    .prologue
    .line 909
    new-instance v0, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;

    iget-object v1, p0, Lcom/htc/widget/CarouselHost$TabSpec;->this$0:Lcom/htc/widget/CarouselHost;

    iget-object v6, p0, Lcom/htc/widget/CarouselHost$TabSpec;->mTag:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/htc/widget/CarouselHost$LabelAndIconIndicatorStategy;-><init>(Lcom/htc/widget/CarouselHost;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Landroid/content/Intent$ShortcutIconResource;Ljava/lang/String;Lcom/htc/widget/CarouselHost$1;)V

    iput-object v0, p0, Lcom/htc/widget/CarouselHost$TabSpec;->mIndicatorStrategy:Lcom/htc/widget/CarouselHost$IndicatorStrategy;

    .line 910
    return-object p0
.end method

.method public sync(Lcom/htc/widget/TaskInfo;)V
    .locals 3
    .parameter "taskInfo"

    .prologue
    .line 943
    iget-object v0, p0, Lcom/htc/widget/CarouselHost$TabSpec;->mTag:Ljava/lang/String;

    iget-object v1, p1, Lcom/htc/widget/TaskInfo;->taskTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 944
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Strange ! tasktag is different "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/CarouselHost$TabSpec;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sync "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/widget/TaskInfo;->taskTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 946
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/widget/CarouselHost$ContentStrategy;

    invoke-interface {v0, p1}, Lcom/htc/widget/CarouselHost$ContentStrategy;->sync(Lcom/htc/widget/TaskInfo;)V

    .line 947
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TabSpec[mTag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/CarouselHost$TabSpec;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",IndicatorStrategy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/CarouselHost$TabSpec;->mIndicatorStrategy:Lcom/htc/widget/CarouselHost$IndicatorStrategy;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mContentStrategy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/CarouselHost$TabSpec;->mContentStrategy:Lcom/htc/widget/CarouselHost$ContentStrategy;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

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
