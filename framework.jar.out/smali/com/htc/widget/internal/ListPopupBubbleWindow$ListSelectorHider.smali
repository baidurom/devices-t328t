.class Lcom/htc/widget/internal/ListPopupBubbleWindow$ListSelectorHider;
.super Ljava/lang/Object;
.source "ListPopupBubbleWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/internal/ListPopupBubbleWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListSelectorHider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/internal/ListPopupBubbleWindow;


# direct methods
.method private constructor <init>(Lcom/htc/widget/internal/ListPopupBubbleWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 1733
    iput-object p1, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow$ListSelectorHider;->this$0:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/internal/ListPopupBubbleWindow;Lcom/htc/widget/internal/ListPopupBubbleWindow$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1733
    invoke-direct {p0, p1}, Lcom/htc/widget/internal/ListPopupBubbleWindow$ListSelectorHider;-><init>(Lcom/htc/widget/internal/ListPopupBubbleWindow;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1736
    iget-object v0, p0, Lcom/htc/widget/internal/ListPopupBubbleWindow$ListSelectorHider;->this$0:Lcom/htc/widget/internal/ListPopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/internal/ListPopupBubbleWindow;->clearListSelection()V

    .line 1737
    return-void
.end method
