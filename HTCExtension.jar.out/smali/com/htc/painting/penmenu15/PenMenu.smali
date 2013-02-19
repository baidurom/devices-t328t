.class public Lcom/htc/painting/penmenu15/PenMenu;
.super Landroid/view/View;
.source "PenMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/painting/penmenu15/PenMenu$PenMenuHandler;,
        Lcom/htc/painting/penmenu15/PenMenu$PromptListener;,
        Lcom/htc/painting/penmenu15/PenMenu$PenMenuShowHideMonitor;,
        Lcom/htc/painting/penmenu15/PenMenu$DispatchTouchDelegate;,
        Lcom/htc/painting/penmenu15/PenMenu$DragMenuMonitor;,
        Lcom/htc/painting/penmenu15/PenMenu$DragColorMonitor;,
        Lcom/htc/painting/penmenu15/PenMenu$InitLoadMonitor;
    }
.end annotation


# static fields
.field public static final BASE_ID:I = 0x0

.field public static final CLEAR_ACTION_ID:I = 0x12c

.field public static final COLOR_CHOOSE_ID:I = 0x1f

.field public static final COLOR_DRAG_ID:I = 0x20

.field public static final COLOR_MENU_ID:I = 0x3

.field public static final HIGHLIGHT_TOOL_ID:I = 0x22

.field public static final LOCK_PIN_ID:I = 0x29

.field public static final PANEL_ACTION:I = 0x329

.field public static final PANEL_OPTION:I = 0x328

.field public static final PENSET_ALL:I = 0x0

.field public static final PENSET_DEFAULT:I = 0x0

.field public static final PENSET_SIMPLE:I = 0x1

.field public static final PENSET_SINGLE:I = 0x2

.field public static final REDO_ACTION_ID:I = 0x190

.field public static final SCROLL_ALWAYS_MOVE:I = 0x192

.field public static final SCROLL_NO_MOVE:I = 0x193

.field public static final SCROLL_REGULAR:I = 0x191

.field public static final SIZE_MENU_ID:I = 0x1

.field public static final STROKE_INVISIBLE:I = 0x0

.field public static final STROKE_VISIBLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PenMenuNew"

.field public static final TYPE_CHOOSE_ID:I = 0x21

.field public static final TYPE_MENU_ID:I = 0x2

.field public static final UNDO_ACTION_ID:I = 0x64

.field public static final UNHIGHLIGHT_TOOL_ID:I = 0x23

.field public static final VISIBLE_ACTION_ID:I = 0xc8


# instance fields
.field private mAttachedToWindow:Z

.field private mContainer:Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;

.field private mHandler:Landroid/os/Handler;

.field private mHintPromptEnabled:Z

.field private mInserted:Z

.field private mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

.field private mPromptListner:Lcom/htc/painting/penmenu15/PenMenu$PromptListener;

.field private mPromptText:Landroid/view/View;

.field private mPromptToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 171
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 158
    iput-boolean v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mInserted:Z

    .line 159
    iput-boolean v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mAttachedToWindow:Z

    .line 163
    iput-object v1, p0, Lcom/htc/painting/penmenu15/PenMenu;->mContainer:Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;

    .line 168
    iput-object v1, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPromptText:Landroid/view/View;

    .line 952
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mHintPromptEnabled:Z

    .line 1030
    iput-object v1, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPromptToast:Landroid/widget/Toast;

    .line 172
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/PenMenu;->init(Landroid/content/Context;)V

    .line 173
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 176
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 158
    iput-boolean v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mInserted:Z

    .line 159
    iput-boolean v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mAttachedToWindow:Z

    .line 163
    iput-object v1, p0, Lcom/htc/painting/penmenu15/PenMenu;->mContainer:Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;

    .line 168
    iput-object v1, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPromptText:Landroid/view/View;

    .line 952
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mHintPromptEnabled:Z

    .line 1030
    iput-object v1, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPromptToast:Landroid/widget/Toast;

    .line 177
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/PenMenu;->init(Landroid/content/Context;)V

    .line 178
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 181
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 158
    iput-boolean v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mInserted:Z

    .line 159
    iput-boolean v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mAttachedToWindow:Z

    .line 163
    iput-object v1, p0, Lcom/htc/painting/penmenu15/PenMenu;->mContainer:Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;

    .line 168
    iput-object v1, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPromptText:Landroid/view/View;

    .line 952
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mHintPromptEnabled:Z

    .line 1030
    iput-object v1, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPromptToast:Landroid/widget/Toast;

    .line 183
    return-void
.end method

.method static synthetic access$200(Lcom/htc/painting/penmenu15/PenMenu;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mAttachedToWindow:Z

    return v0
.end method

.method static synthetic access$300(Lcom/htc/painting/penmenu15/PenMenu;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mInserted:Z

    return v0
.end method

.method static synthetic access$302(Lcom/htc/painting/penmenu15/PenMenu;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/htc/painting/penmenu15/PenMenu;->mInserted:Z

    return p1
.end method

.method static synthetic access$400(Lcom/htc/painting/penmenu15/PenMenu;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/PenMenu;->getLayoutParamsForContainer()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/painting/penmenu15/PenMenu;)Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mContainer:Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/painting/penmenu15/PenMenu;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mHintPromptEnabled:Z

    return v0
.end method

.method static synthetic access$700(Lcom/htc/painting/penmenu15/PenMenu;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/painting/penmenu15/PenMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/PenMenu;->insertPrompt()V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/painting/penmenu15/PenMenu;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/htc/painting/penmenu15/PenMenu;->removePrompt(Z)V

    return-void
.end method

.method private clearPromptListener()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPromptListner:Lcom/htc/painting/penmenu15/PenMenu$PromptListener;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    iget-object v1, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPromptListner:Lcom/htc/painting/penmenu15/PenMenu$PromptListener;

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu15/RoundPenMenu;->removeShowHideMonitor(Lcom/htc/painting/penmenu15/PenMenu$PenMenuShowHideMonitor;)V

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPromptListner:Lcom/htc/painting/penmenu15/PenMenu$PromptListener;

    .line 230
    :cond_0
    return-void
.end method

.method private getLayoutParamsForContainer()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .prologue
    const/4 v1, -0x2

    .line 280
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x3ea

    const v4, 0x860228

    move v2, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 292
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 293
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/PenMenu;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 296
    const-string v1, "PenMenu"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 297
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    .line 300
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    .line 303
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    .line 305
    return-object v0
.end method

.method private getLayoutParamsForPenMenu()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .prologue
    const/4 v1, -0x2

    .line 309
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x3ea

    const v4, 0x820228

    move v2, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 320
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 321
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/PenMenu;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 324
    const-string v1, "PenMenu"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 325
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    .line 328
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    .line 331
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    .line 333
    return-object v0
.end method

.method private getPenMenuLayout()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 270
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x33

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 276
    .local v0, result:Landroid/widget/FrameLayout$LayoutParams;
    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .parameter "ctx"

    .prologue
    const/4 v3, 0x0

    .line 186
    new-instance v0, Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-direct {v0, p1}, Lcom/htc/painting/penmenu15/RoundPenMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    .line 188
    new-instance v0, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;

    invoke-direct {v0, p1}, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mContainer:Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;

    .line 189
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mContainer:Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;

    iget-object v1, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-direct {p0}, Lcom/htc/painting/penmenu15/PenMenu;->getPenMenuLayout()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->addPenMenu(Lcom/htc/painting/penmenu15/RoundPenMenu;Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    invoke-static {p1}, Lcom/htc/painting/penmenu15/PenManager;->shouldShowPrompt(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    new-instance v0, Lcom/htc/painting/penmenu15/PenMenu$PromptListener;

    invoke-direct {v0, p0, v3}, Lcom/htc/painting/penmenu15/PenMenu$PromptListener;-><init>(Lcom/htc/painting/penmenu15/PenMenu;Lcom/htc/painting/penmenu15/PenMenu$1;)V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPromptListner:Lcom/htc/painting/penmenu15/PenMenu$PromptListener;

    .line 192
    new-instance v0, Lcom/htc/painting/penmenu15/PenMenu$PenMenuHandler;

    invoke-direct {v0, p0, v3}, Lcom/htc/painting/penmenu15/PenMenu$PenMenuHandler;-><init>(Lcom/htc/painting/penmenu15/PenMenu;Lcom/htc/painting/penmenu15/PenMenu$1;)V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mHandler:Landroid/os/Handler;

    .line 194
    :cond_0
    return-void
.end method

.method private insertContainer()V
    .locals 3

    .prologue
    .line 241
    new-instance v0, Lcom/htc/painting/penmenu15/PenMenu$1;

    invoke-direct {v0, p0}, Lcom/htc/painting/penmenu15/PenMenu$1;-><init>(Lcom/htc/painting/penmenu15/PenMenu;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/painting/penmenu15/PenMenu;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 258
    return-void
.end method

.method private insertPrompt()V
    .locals 6

    .prologue
    const/16 v5, 0x12c

    const/4 v4, 0x0

    .line 1033
    iget-object v1, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPromptToast:Landroid/widget/Toast;

    if-nez v1, :cond_0

    .line 1034
    iget-object v1, p0, Lcom/htc/painting/penmenu15/PenMenu;->mContext:Landroid/content/Context;

    const v2, 0x20403be

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPromptToast:Landroid/widget/Toast;

    .line 1035
    iget-object v1, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPromptToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1039
    :cond_0
    iget-object v1, p0, Lcom/htc/painting/penmenu15/PenMenu;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1040
    iget-object v1, p0, Lcom/htc/painting/penmenu15/PenMenu;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, v4, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1041
    .local v0, dismss:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/painting/penmenu15/PenMenu;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1042
    return-void
.end method

.method private onVisibilityChanged()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 344
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/PenMenu;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 345
    .local v0, visible:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 346
    iget-object v2, p0, Lcom/htc/painting/penmenu15/PenMenu;->mContainer:Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;

    invoke-virtual {v2, v1}, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->setVisibility(I)V

    .line 350
    :goto_1
    return-void

    .end local v0           #visible:Z
    :cond_0
    move v0, v1

    .line 344
    goto :goto_0

    .line 348
    .restart local v0       #visible:Z
    :cond_1
    iget-object v1, p0, Lcom/htc/painting/penmenu15/PenMenu;->mContainer:Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->setVisibility(I)V

    goto :goto_1
.end method

.method private removeContainer()V
    .locals 2

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mInserted:Z

    if-eqz v0, :cond_0

    .line 262
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/painting/penmenu15/PenMenu;->mContainer:Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerImpl;->removeViewImmediate(Landroid/view/View;)V

    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mInserted:Z

    .line 265
    :cond_0
    return-void
.end method

.method private removePrompt(Z)V
    .locals 2
    .parameter "saveState"

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPromptToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 1047
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPromptToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1048
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPromptToast:Landroid/widget/Toast;

    .line 1049
    if-eqz p1, :cond_0

    .line 1050
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/PenMenu;->clearPromptListener()V

    .line 1052
    :cond_0
    if-eqz p1, :cond_1

    .line 1053
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/PenManager;->setShouldShowPrompt(Landroid/content/Context;Z)Z

    .line 1055
    :cond_1
    return-void
.end method


# virtual methods
.method public OnRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 480
    return-void
.end method

.method public OnSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 495
    return-void
.end method

.method public addStateMonitor(Lcom/htc/painting/penmenu15/PenMenu$PenMenuShowHideMonitor;)V
    .locals 2
    .parameter "monitor"

    .prologue
    .line 867
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/PenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 868
    const-string v0, "PenMenuNew"

    const-string v1, "addStateMonitor - PenMenu has already been destroyed!"

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    :cond_0
    :goto_0
    return-void

    .line 872
    :cond_1
    if-eqz p1, :cond_0

    .line 873
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {v0, p1}, Lcom/htc/painting/penmenu15/RoundPenMenu;->addShowHideMonitor(Lcom/htc/painting/penmenu15/PenMenu$PenMenuShowHideMonitor;)V

    goto :goto_0
.end method

.method public changeState()V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->changeState()V

    .line 369
    return-void
.end method

.method public findViewById2(I)Landroid/view/View;
    .locals 2
    .parameter "id"

    .prologue
    .line 657
    invoke-super {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 659
    .local v0, view:Landroid/view/View;
    if-nez v0, :cond_0

    .line 660
    iget-object v1, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {v1, p1}, Lcom/htc/painting/penmenu15/RoundPenMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 663
    .end local v0           #view:Landroid/view/View;
    :cond_0
    return-object v0
.end method

.method public forceHideStroke(Z)I
    .locals 1
    .parameter "forceHide"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {v0, p1}, Lcom/htc/painting/penmenu15/RoundPenMenu;->forceHideStroke(Z)I

    move-result v0

    return v0
.end method

.method public getCenter(I)Landroid/graphics/Point;
    .locals 1
    .parameter "elementId"

    .prologue
    .line 791
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {v0, p1}, Lcom/htc/painting/penmenu15/RoundPenMenu;->getCenter(I)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getStickyState()Z
    .locals 1

    .prologue
    .line 911
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->getStickyShow()Z

    move-result v0

    return v0
.end method

.method public getStrokesAlpha()I
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->getStrokesAlpha()I

    move-result v0

    return v0
.end method

.method public getTouchArea(I)Landroid/graphics/Region;
    .locals 1
    .parameter "id"

    .prologue
    .line 734
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {v0, p1}, Lcom/htc/painting/penmenu15/RoundPenMenu;->getTouchArea(I)Landroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method

.method public handleKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 387
    const/4 v0, 0x0

    return v0
.end method

.method public handleMotionEvent(ILandroid/view/MotionEvent;)Z
    .locals 1
    .parameter "elementId"
    .parameter "event"

    .prologue
    .line 815
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {v0, p1, p2}, Lcom/htc/painting/penmenu15/RoundPenMenu;->handleMotionEvent(ILandroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 412
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/painting/penmenu15/PenMenu;->hide(ZZ)V

    .line 413
    return-void
.end method

.method public hide(ZZ)V
    .locals 1
    .parameter "playAnimation"
    .parameter "turnOffStickyState"

    .prologue
    .line 427
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {v0, p1, p2}, Lcom/htc/painting/penmenu15/RoundPenMenu;->hide(ZZ)V

    .line 428
    return-void
.end method

.method public initForPenTips()V
    .locals 1

    .prologue
    .line 762
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->initForPenTips()V

    .line 764
    return-void
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFirstCreated()Z
    .locals 1

    .prologue
    .line 826
    const/4 v0, 0x0

    return v0
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 804
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->isShown()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 198
    const-string v0, "PenMenuNew"

    const-string v1, " PenMenu.onAttachedToWindow()"

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mAttachedToWindow:Z

    .line 200
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 201
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/PenMenu;->insertContainer()V

    .line 202
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPromptListner:Lcom/htc/painting/penmenu15/PenMenu$PromptListener;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    iget-object v1, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPromptListner:Lcom/htc/painting/penmenu15/PenMenu$PromptListener;

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu15/RoundPenMenu;->addShowHideMonitor(Lcom/htc/painting/penmenu15/PenMenu$PenMenuShowHideMonitor;)V

    .line 204
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->getStickyShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPromptListner:Lcom/htc/painting/penmenu15/PenMenu$PromptListener;

    invoke-virtual {v0, v2, v2}, Lcom/htc/painting/penmenu15/PenMenu$PromptListener;->onChange(ZZ)V

    .line 208
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 434
    const-string v0, "PenMenuNew"

    const-string v1, " PenMenu.onDestroy()"

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->onDestroy()V

    .line 438
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/PenMenu;->removeContainer()V

    .line 439
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 211
    const-string v0, "PenMenuNew"

    const-string v1, " PenMenu.onDetachedFromWindow()"

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 213
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/PenMenu;->removeContainer()V

    .line 214
    iput-boolean v2, p0, Lcom/htc/painting/penmenu15/PenMenu;->mAttachedToWindow:Z

    .line 217
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPromptToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 219
    invoke-direct {p0, v2}, Lcom/htc/painting/penmenu15/PenMenu;->removePrompt(Z)V

    .line 222
    :cond_0
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/PenMenu;->clearPromptListener()V

    .line 223
    return-void
.end method

.method public onMenuClosed()V
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->onMenuClosed()V

    .line 455
    return-void
.end method

.method public onMenuOpened()V
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->onMenuOpened()V

    .line 466
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 474
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 489
    return-void
.end method

.method public passAllTouchEventsToRoot(Z)V
    .locals 1
    .parameter "pass"

    .prologue
    .line 921
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mContainer:Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;

    if-eqz v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mContainer:Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;

    invoke-virtual {v0, p1}, Lcom/htc/painting/penmenu15/view/WrapContentPenMenuContainer;->passAllTouchEventsToRoot(Z)V

    .line 924
    :cond_0
    return-void
.end method

.method public refreshPaintingViewState()V
    .locals 0

    .prologue
    .line 835
    return-void
.end method

.method public removeStateMonitor(Lcom/htc/painting/penmenu15/PenMenu$PenMenuShowHideMonitor;)V
    .locals 2
    .parameter "monitor"

    .prologue
    .line 880
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/PenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 881
    const-string v0, "PenMenuNew"

    const-string v1, "removeStateMonitor - PenMenu has already been destroyed!"

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    :cond_0
    :goto_0
    return-void

    .line 885
    :cond_1
    if-eqz p1, :cond_0

    .line 886
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {v0, p1}, Lcom/htc/painting/penmenu15/RoundPenMenu;->removeShowHideMonitor(Lcom/htc/painting/penmenu15/PenMenu$PenMenuShowHideMonitor;)V

    goto :goto_0
.end method

.method public restoreSetting()V
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->restoreSetting()V

    .line 510
    return-void
.end method

.method public saveSetting()V
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/RoundPenMenu;->saveSetting()V

    .line 524
    return-void
.end method

.method public setActionActive(IZ)V
    .locals 1
    .parameter "actionId"
    .parameter "active"

    .prologue
    .line 541
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {v0, p1, p2}, Lcom/htc/painting/penmenu15/RoundPenMenu;->setActionActive(IZ)V

    .line 542
    return-void
.end method

.method public setDispatchDelegate(Lcom/htc/painting/penmenu15/PenMenu$DispatchTouchDelegate;)V
    .locals 2
    .parameter "delegate"

    .prologue
    .line 721
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/PenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    const-string v0, "PenMenuNew"

    const-string v1, "setDispatchDelegate - PenMenu has already been destroyed!"

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :goto_0
    return-void

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {v0, p1}, Lcom/htc/painting/penmenu15/RoundPenMenu;->setDispatchDelegate(Lcom/htc/painting/penmenu15/PenMenu$DispatchTouchDelegate;)V

    goto :goto_0
.end method

.method public setDragColorMonitor(Lcom/htc/painting/penmenu15/PenMenu$DragColorMonitor;)V
    .locals 2
    .parameter "monitor"

    .prologue
    .line 679
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/PenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 680
    const-string v0, "PenMenuNew"

    const-string v1, "setDragColorMonitor - PenMenu has already been destroyed!"

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :goto_0
    return-void

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {v0, p1}, Lcom/htc/painting/penmenu15/RoundPenMenu;->setDragColorMonitor(Lcom/htc/painting/penmenu15/PenMenu$DragColorMonitor;)V

    goto :goto_0
.end method

.method public setDragMenuMonitor(Lcom/htc/painting/penmenu15/PenMenu$DragMenuMonitor;)V
    .locals 2
    .parameter "monitor"

    .prologue
    .line 700
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/PenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    const-string v0, "PenMenuNew"

    const-string v1, "setDragMenuMonitor - PenMenu has already been destroyed!"

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :goto_0
    return-void

    .line 705
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {v0, p1}, Lcom/htc/painting/penmenu15/RoundPenMenu;->setDragMenuMonitor(Lcom/htc/painting/penmenu15/PenMenu$DragMenuMonitor;)V

    goto :goto_0
.end method

.method public setEraserMode(Z)V
    .locals 1
    .parameter "isEraserMode"

    .prologue
    .line 553
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {v0, p1}, Lcom/htc/painting/penmenu15/RoundPenMenu;->setEraserMode(Z)V

    .line 554
    return-void
.end method

.method public setHighLightConfiguration(Lcom/htc/painting/penmenu/highlight/IHighlightConfiguration;)V
    .locals 1
    .parameter "highlightConfig"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {v0, p1}, Lcom/htc/painting/penmenu15/RoundPenMenu;->setHighLightConfiguration(Lcom/htc/painting/penmenu/highlight/IHighlightConfiguration;)V

    .line 357
    :cond_0
    return-void
.end method

.method public setHintPromptEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 954
    iput-boolean p1, p0, Lcom/htc/painting/penmenu15/PenMenu;->mHintPromptEnabled:Z

    .line 956
    iget-boolean v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mHintPromptEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 958
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/painting/penmenu15/PenMenu;->removePrompt(Z)V

    .line 960
    :cond_0
    return-void
.end method

.method public setInitLoadMonitor(Lcom/htc/painting/penmenu15/PenMenu$InitLoadMonitor;)V
    .locals 2
    .parameter "monitor"

    .prologue
    .line 643
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/PenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    const-string v0, "PenMenuNew"

    const-string v1, "setInitLoadMonitor - PenMenu has already been destroyed!"

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :goto_0
    return-void

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {v0, p1}, Lcom/htc/painting/penmenu15/RoundPenMenu;->setInitLoadMonitor(Lcom/htc/painting/penmenu15/PenMenu$InitLoadMonitor;)V

    goto :goto_0
.end method

.method public setOnActionPerformListener(Lcom/htc/painting/penmenu15/OnActionPerformListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 570
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {v0, p1}, Lcom/htc/painting/penmenu15/RoundPenMenu;->setOnActionPerformListener(Lcom/htc/painting/penmenu15/OnActionPerformListener;)V

    .line 571
    return-void
.end method

.method public setPaintingView(Lcom/htc/painting/engine/IStrokeNotifyPaintingView;)V
    .locals 1
    .parameter "paintingView"

    .prologue
    .line 579
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {v0, p1}, Lcom/htc/painting/penmenu15/RoundPenMenu;->setPaintingView(Lcom/htc/painting/engine/IStrokeNotifyPaintingView;)V

    .line 580
    return-void
.end method

.method public setPanel(IZ)V
    .locals 1
    .parameter "panel"
    .parameter "playAnimation"

    .prologue
    .line 782
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {v0, p1, p2}, Lcom/htc/painting/penmenu15/RoundPenMenu;->setPanel(IZ)V

    .line 783
    return-void
.end method

.method public setPenMenuPosition(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 772
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {v0, p1, p2}, Lcom/htc/painting/penmenu15/RoundPenMenu;->moveToPosition(II)V

    .line 774
    :cond_0
    return-void
.end method

.method public setPenMenuUIState(ZI)V
    .locals 0
    .parameter "isMenuExpand"
    .parameter "selectedMenuId"

    .prologue
    .line 846
    return-void
.end method

.method public setPenSetType(I)V
    .locals 1
    .parameter "penSetType"

    .prologue
    .line 595
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {v0, p1}, Lcom/htc/painting/penmenu15/RoundPenMenu;->setPenSetType(I)V

    .line 596
    return-void
.end method

.method public setPin(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {v0, p1}, Lcom/htc/painting/penmenu15/RoundPenMenu;->setPin(Z)V

    .line 238
    return-void
.end method

.method public setScrollMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 942
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    if-eqz v0, :cond_1

    .line 943
    const/16 v0, 0x191

    if-eq p1, v0, :cond_0

    const/16 v0, 0x192

    if-eq p1, v0, :cond_0

    const/16 v0, 0x193

    if-eq p1, v0, :cond_0

    .line 944
    const/16 p1, 0x191

    .line 945
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {v0, p1}, Lcom/htc/painting/penmenu15/RoundPenMenu;->setScrollMode(I)V

    .line 947
    :cond_1
    return-void
.end method

.method public setStateMonitor(Lcom/htc/painting/penmenu15/PenMenu$PenMenuShowHideMonitor;)V
    .locals 2
    .parameter "monitor"

    .prologue
    .line 853
    invoke-virtual {p0}, Lcom/htc/painting/penmenu15/PenMenu;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 854
    const-string v0, "PenMenuNew"

    const-string v1, "setStateMonitor - PenMenu has already been destroyed!"

    invoke-static {v0, v1}, Lcom/htc/painting/penmenu15/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :cond_0
    :goto_0
    return-void

    .line 858
    :cond_1
    if-eqz p1, :cond_0

    .line 859
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {v0, p1}, Lcom/htc/painting/penmenu15/RoundPenMenu;->addShowHideMonitor(Lcom/htc/painting/penmenu15/PenMenu$PenMenuShowHideMonitor;)V

    goto :goto_0
.end method

.method public setStrokeVisibleState(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 602
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {v0, p1}, Lcom/htc/painting/penmenu15/RoundPenMenu;->setStrokeVisibleState(I)V

    .line 603
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 339
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 340
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/PenMenu;->onVisibilityChanged()V

    .line 341
    return-void
.end method

.method public setupSignatureAction(I[II)V
    .locals 0
    .parameter "id"
    .parameter "resIds"
    .parameter "initState"

    .prologue
    .line 894
    return-void
.end method

.method public show()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 612
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/painting/penmenu15/PenMenu;->show(ZZ)V

    .line 613
    return-void
.end method

.method public show(ZZ)V
    .locals 1
    .parameter "playAnimation"
    .parameter "turnOnStickyState"

    .prologue
    .line 627
    iget-object v0, p0, Lcom/htc/painting/penmenu15/PenMenu;->mPenMenu:Lcom/htc/painting/penmenu15/RoundPenMenu;

    invoke-virtual {v0, p1, p2}, Lcom/htc/painting/penmenu15/RoundPenMenu;->show(ZZ)V

    .line 628
    return-void
.end method
