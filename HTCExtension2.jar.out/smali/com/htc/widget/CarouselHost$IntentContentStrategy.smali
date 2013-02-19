.class Lcom/htc/widget/CarouselHost$IntentContentStrategy;
.super Ljava/lang/Object;
.source "CarouselHost.java"

# interfaces
.implements Lcom/htc/widget/CarouselHost$ContentStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/CarouselHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntentContentStrategy"
.end annotation


# instance fields
.field private dirty:Z

.field private mIntent:Landroid/content/Intent;

.field private mLaunchedView:Landroid/view/View;

.field private final mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/widget/CarouselHost;


# direct methods
.method private constructor <init>(Lcom/htc/widget/CarouselHost;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter "tag"
    .parameter "intent"

    .prologue
    .line 1050
    iput-object p1, p0, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->this$0:Lcom/htc/widget/CarouselHost;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1048
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->dirty:Z

    .line 1051
    iput-object p2, p0, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->mTag:Ljava/lang/String;

    .line 1054
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1055
    .local v0, component:Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 1056
    #getter for: Lcom/htc/widget/CarouselHost;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/htc/widget/CarouselHost;->access$1100(Lcom/htc/widget/CarouselHost;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1058
    invoke-virtual {p3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1061
    :cond_0
    iput-object p3, p0, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;

    .line 1062
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/CarouselHost;Ljava/lang/String;Landroid/content/Intent;Lcom/htc/widget/CarouselHost$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 1042
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/CarouselHost$IntentContentStrategy;-><init>(Lcom/htc/widget/CarouselHost;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/widget/CarouselHost$IntentContentStrategy;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public compareIntent(Ljava/lang/String;)Z
    .locals 4
    .parameter "intentUri"

    .prologue
    const/4 v3, 0x0

    .line 1171
    const/4 v1, 0x0

    .line 1173
    .local v1, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1178
    :goto_0
    iget-object v2, p0, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 1174
    :catch_0
    move-exception v0

    .line 1175
    .local v0, e:Ljava/net/URISyntaxException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContentView()Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1068
    iget-object v3, p0, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->this$0:Lcom/htc/widget/CarouselHost;

    iget-object v3, v3, Lcom/htc/widget/CarouselHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    if-nez v3, :cond_0

    .line 1069
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Did you forget to call \'public void setup(LocalActivityManager activityGroup)\'?"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1071
    :cond_0
    iget-boolean v3, p0, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->dirty:Z

    if-eqz v3, :cond_1

    .line 1072
    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->tabRemoved()V

    .line 1073
    iput-boolean v6, p0, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->dirty:Z

    .line 1076
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->this$0:Lcom/htc/widget/CarouselHost;

    iget-object v3, v3, Lcom/htc/widget/CarouselHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    iget-object v4, p0, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->mTag:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4, v5}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v1

    .line 1080
    .local v1, w:Landroid/view/Window;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 1081
    .local v2, wd:Landroid/view/View;
    :goto_0
    iget-object v3, p0, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    if-eq v3, v2, :cond_2

    iget-object v3, p0, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 1082
    iget-object v3, p0, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1083
    iget-object v3, p0, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->this$0:Lcom/htc/widget/CarouselHost;

    #getter for: Lcom/htc/widget/CarouselHost;->mTabContent:Landroid/widget/FrameLayout;
    invoke-static {v3}, Lcom/htc/widget/CarouselHost;->access$1200(Lcom/htc/widget/CarouselHost;)Landroid/widget/FrameLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1086
    :cond_2
    iput-object v2, p0, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1099
    .end local v1           #w:Landroid/view/Window;
    .end local v2           #wd:Landroid/view/View;
    :goto_1
    iget-object v3, p0, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 1100
    iget-object v3, p0, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1101
    iget-object v3, p0, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1102
    iget-object v3, p0, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    const/high16 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 1105
    :cond_3
    iget-object v3, p0, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    return-object v3

    .line 1080
    .restart local v1       #w:Landroid/view/Window;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 1087
    .end local v1           #w:Landroid/view/Window;
    :catch_0
    move-exception v0

    .line 1088
    .local v0, e:Landroid/content/ActivityNotFoundException;
    iget-object v3, p0, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->this$0:Lcom/htc/widget/CarouselHost;

    iget-object v4, p0, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/widget/CarouselHost;->removeTabByTag(Ljava/lang/String;)V

    .line 1089
    const-string v3, "IntentContentStrategy::getContentView()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "We can not find Activity, so remove Tag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Uri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public sync(Lcom/htc/widget/TaskInfo;)V
    .locals 5
    .parameter "taskInfo"

    .prologue
    const/4 v4, 0x0

    .line 1157
    const/4 v1, 0x0

    .line 1159
    .local v1, intent:Landroid/content/Intent;
    :try_start_0
    iget-object v2, p1, Lcom/htc/widget/TaskInfo;->intentUri:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1164
    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1165
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->dirty:Z

    .line 1166
    iput-object v1, p0, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;

    .line 1168
    :cond_0
    return-void

    .line 1160
    :catch_0
    move-exception v0

    .line 1161
    .local v0, e:Ljava/net/URISyntaxException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public tabClosed()V
    .locals 2

    .prologue
    .line 1113
    iget-boolean v0, p0, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->dirty:Z

    if-eqz v0, :cond_0

    .line 1114
    invoke-virtual {p0}, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->tabRemoved()V

    .line 1115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->dirty:Z

    .line 1117
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1118
    iget-object v0, p0, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1120
    :cond_1
    return-void
.end method

.method public tabOnPaused()V
    .locals 2

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->this$0:Lcom/htc/widget/CarouselHost;

    iget-object v0, v0, Lcom/htc/widget/CarouselHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->dispatchPause(Z)V

    .line 1143
    return-void
.end method

.method public tabOnResume()V
    .locals 1

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->this$0:Lcom/htc/widget/CarouselHost;

    iget-object v0, v0, Lcom/htc/widget/CarouselHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->dispatchResume()V

    .line 1147
    return-void
.end method

.method public tabRemoved()V
    .locals 3

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1128
    iget-object v0, p0, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1129
    iget-object v0, p0, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->this$0:Lcom/htc/widget/CarouselHost;

    #getter for: Lcom/htc/widget/CarouselHost;->mTabContent:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/htc/widget/CarouselHost;->access$1200(Lcom/htc/widget/CarouselHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1132
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    .line 1133
    iget-object v0, p0, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->this$0:Lcom/htc/widget/CarouselHost;

    iget-object v0, v0, Lcom/htc/widget/CarouselHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    iget-object v1, p0, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->mTag:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    .line 1137
    iget-object v0, p0, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->this$0:Lcom/htc/widget/CarouselHost;

    #getter for: Lcom/htc/widget/CarouselHost;->decorViewHash:Lcom/htc/widget/CarouselHost$DecorHashMap;
    invoke-static {v0}, Lcom/htc/widget/CarouselHost;->access$1300(Lcom/htc/widget/CarouselHost;)Lcom/htc/widget/CarouselHost$DecorHashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->mTag:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1138
    iget-object v0, p0, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->this$0:Lcom/htc/widget/CarouselHost;

    #getter for: Lcom/htc/widget/CarouselHost;->decorViewHash:Lcom/htc/widget/CarouselHost$DecorHashMap;
    invoke-static {v0}, Lcom/htc/widget/CarouselHost;->access$1300(Lcom/htc/widget/CarouselHost;)Lcom/htc/widget/CarouselHost$DecorHashMap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->this$0:Lcom/htc/widget/CarouselHost;

    #getter for: Lcom/htc/widget/CarouselHost;->mCarousel:Lcom/htc/widget/CarouselActivity;
    invoke-static {v2}, Lcom/htc/widget/CarouselHost;->access$1400(Lcom/htc/widget/CarouselHost;)Lcom/htc/widget/CarouselActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/htc/widget/CarouselActivity;->mGID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/CarouselHost$DecorHashMap;->removeHash(Ljava/lang/String;)V

    .line 1139
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IntentContentStrategy[mTag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mIntent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/widget/CarouselHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

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
