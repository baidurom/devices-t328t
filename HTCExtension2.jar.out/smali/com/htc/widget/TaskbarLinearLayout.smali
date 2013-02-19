.class public Lcom/htc/widget/TaskbarLinearLayout;
.super Landroid/widget/LinearLayout;
.source "TaskbarLinearLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskbarLinearLayout"

.field private static mNewOrientation:I

.field private static mOldOrientation:I


# instance fields
.field button1:Landroid/widget/Button;

.field button2:Landroid/widget/Button;

.field button3:Landroid/widget/Button;

.field private cmd_bar_btn_1:Landroid/widget/Button;

.field dummy1:Landroid/view/View;

.field dummy2:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    sput v0, Lcom/htc/widget/TaskbarLinearLayout;->mOldOrientation:I

    .line 21
    sput v0, Lcom/htc/widget/TaskbarLinearLayout;->mNewOrientation:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object v0, p0, Lcom/htc/widget/TaskbarLinearLayout;->cmd_bar_btn_1:Landroid/widget/Button;

    .line 27
    iput-object v0, p0, Lcom/htc/widget/TaskbarLinearLayout;->button1:Landroid/widget/Button;

    .line 28
    iput-object v0, p0, Lcom/htc/widget/TaskbarLinearLayout;->button2:Landroid/widget/Button;

    .line 29
    iput-object v0, p0, Lcom/htc/widget/TaskbarLinearLayout;->button3:Landroid/widget/Button;

    .line 31
    iput-object v0, p0, Lcom/htc/widget/TaskbarLinearLayout;->dummy1:Landroid/view/View;

    .line 32
    iput-object v0, p0, Lcom/htc/widget/TaskbarLinearLayout;->dummy2:Landroid/view/View;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput-object v0, p0, Lcom/htc/widget/TaskbarLinearLayout;->cmd_bar_btn_1:Landroid/widget/Button;

    .line 27
    iput-object v0, p0, Lcom/htc/widget/TaskbarLinearLayout;->button1:Landroid/widget/Button;

    .line 28
    iput-object v0, p0, Lcom/htc/widget/TaskbarLinearLayout;->button2:Landroid/widget/Button;

    .line 29
    iput-object v0, p0, Lcom/htc/widget/TaskbarLinearLayout;->button3:Landroid/widget/Button;

    .line 31
    iput-object v0, p0, Lcom/htc/widget/TaskbarLinearLayout;->dummy1:Landroid/view/View;

    .line 32
    iput-object v0, p0, Lcom/htc/widget/TaskbarLinearLayout;->dummy2:Landroid/view/View;

    .line 42
    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .parameter "newConfig"

    .prologue
    const/16 v6, 0x8

    .line 49
    invoke-virtual {p0}, Lcom/htc/widget/TaskbarLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    sput v3, Lcom/htc/widget/TaskbarLinearLayout;->mNewOrientation:I

    .line 51
    sget v3, Lcom/htc/widget/TaskbarLinearLayout;->mOldOrientation:I

    sget v4, Lcom/htc/widget/TaskbarLinearLayout;->mNewOrientation:I

    if-eq v3, v4, :cond_0

    .line 52
    sget v3, Lcom/htc/widget/TaskbarLinearLayout;->mNewOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    .line 53
    const-string v3, "TaskbarLinearLayout"

    const-string v4, "enter port"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :try_start_0
    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->cmd_bar_btn_1:Landroid/widget/Button;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->dummy1:Landroid/view/View;

    if-nez v3, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/htc/widget/TaskbarLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2050135

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 57
    .local v2, width:I
    const-string v3, "TaskbarLinearLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cmd_bar_1->port-width:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 60
    .local v1, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->cmd_bar_btn_1:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    .end local v1           #layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v2           #width:I
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->dummy1:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->dummy2:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 65
    const/4 v2, 0x0

    .line 66
    .restart local v2       #width:I
    const-string v3, "TaskbarLinearLayout"

    const-string v4, "cmd_bar_2->port-width:0"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 70
    .restart local v1       #layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->dummy1:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->dummy2:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    .end local v1           #layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v2           #width:I
    :catch_0
    move-exception v0

    .line 101
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 75
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button1:Landroid/widget/Button;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button2:Landroid/widget/Button;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button3:Landroid/widget/Button;

    if-eqz v3, :cond_0

    .line 76
    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button1:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-eq v3, v6, :cond_3

    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button2:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-ne v3, v6, :cond_3

    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button3:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-eq v3, v6, :cond_5

    :cond_3
    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button1:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-ne v3, v6, :cond_4

    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button2:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-eq v3, v6, :cond_4

    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button3:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-eq v3, v6, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button1:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-ne v3, v6, :cond_0

    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button2:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-ne v3, v6, :cond_0

    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button3:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-eq v3, v6, :cond_0

    .line 79
    :cond_5
    invoke-virtual {p0}, Lcom/htc/widget/TaskbarLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2050135

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 80
    .restart local v2       #width:I
    const-string v3, "TaskbarLinearLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "port-width:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 83
    .restart local v1       #layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button1:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-eq v3, v6, :cond_6

    .line 84
    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button1:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    :cond_6
    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button2:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-eq v3, v6, :cond_7

    .line 86
    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button2:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    :cond_7
    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button3:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-eq v3, v6, :cond_0

    .line 88
    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button3:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 105
    .end local v1           #layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v2           #width:I
    :cond_8
    sget v3, Lcom/htc/widget/TaskbarLinearLayout;->mNewOrientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 106
    const-string v3, "TaskbarLinearLayout"

    const-string v4, "enter land"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :try_start_2
    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->cmd_bar_btn_1:Landroid/widget/Button;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->dummy1:Landroid/view/View;

    if-nez v3, :cond_9

    .line 110
    invoke-virtual {p0}, Lcom/htc/widget/TaskbarLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2050136

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 111
    .restart local v2       #width:I
    const-string v3, "TaskbarLinearLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cmd_bar_1->land-width:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 114
    .restart local v1       #layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->cmd_bar_btn_1:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 156
    .end local v1           #layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v2           #width:I
    :catch_1
    move-exception v0

    .line 157
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 118
    .end local v0           #e:Ljava/lang/Exception;
    :cond_9
    :try_start_3
    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->dummy1:Landroid/view/View;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->dummy2:Landroid/view/View;

    if-eqz v3, :cond_a

    .line 119
    const/16 v2, 0xd4

    .line 120
    .restart local v2       #width:I
    const-string v3, "TaskbarLinearLayout"

    const-string v4, "cmd_bar_2->land-width:212"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0xd4

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 123
    .restart local v1       #layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->dummy1:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->dummy2:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 129
    .end local v1           #layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v2           #width:I
    :cond_a
    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button1:Landroid/widget/Button;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button2:Landroid/widget/Button;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button3:Landroid/widget/Button;

    if-eqz v3, :cond_0

    .line 130
    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button1:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-eq v3, v6, :cond_b

    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button2:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-ne v3, v6, :cond_b

    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button3:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-eq v3, v6, :cond_d

    :cond_b
    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button1:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-ne v3, v6, :cond_c

    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button2:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-eq v3, v6, :cond_c

    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button3:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-eq v3, v6, :cond_d

    :cond_c
    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button1:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-ne v3, v6, :cond_0

    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button2:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-ne v3, v6, :cond_0

    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button3:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-eq v3, v6, :cond_0

    .line 133
    :cond_d
    invoke-virtual {p0}, Lcom/htc/widget/TaskbarLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2050136

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 134
    .restart local v2       #width:I
    const-string v3, "TaskbarLinearLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "land-width:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 137
    .restart local v1       #layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button1:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-eq v3, v6, :cond_e

    .line 138
    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button1:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    :cond_e
    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button2:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-eq v3, v6, :cond_f

    .line 140
    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button2:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    :cond_f
    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button3:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-eq v3, v6, :cond_0

    .line 142
    iget-object v3, p0, Lcom/htc/widget/TaskbarLinearLayout;->button3:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0
.end method

.method public onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const v1, 0x2020038

    .line 171
    invoke-virtual {p0, v1}, Lcom/htc/widget/TaskbarLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/widget/TaskbarLinearLayout;->cmd_bar_btn_1:Landroid/widget/Button;

    .line 173
    invoke-virtual {p0, v1}, Lcom/htc/widget/TaskbarLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/TaskbarLinearLayout;->dummy1:Landroid/view/View;

    .line 174
    invoke-virtual {p0, v1}, Lcom/htc/widget/TaskbarLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/TaskbarLinearLayout;->dummy2:Landroid/view/View;

    .line 179
    iput-object v2, p0, Lcom/htc/widget/TaskbarLinearLayout;->button1:Landroid/widget/Button;

    .line 180
    iput-object v2, p0, Lcom/htc/widget/TaskbarLinearLayout;->button2:Landroid/widget/Button;

    .line 181
    iput-object v2, p0, Lcom/htc/widget/TaskbarLinearLayout;->button3:Landroid/widget/Button;

    .line 182
    return-void
.end method
