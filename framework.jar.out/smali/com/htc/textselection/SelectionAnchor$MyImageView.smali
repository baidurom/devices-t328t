.class Lcom/htc/textselection/SelectionAnchor$MyImageView;
.super Landroid/widget/ImageView;
.source "SelectionAnchor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/textselection/SelectionAnchor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyImageView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/textselection/SelectionAnchor;


# direct methods
.method public constructor <init>(Lcom/htc/textselection/SelectionAnchor;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/htc/textselection/SelectionAnchor$MyImageView;->this$0:Lcom/htc/textselection/SelectionAnchor;

    .line 176
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 177
    return-void
.end method


# virtual methods
.method public dispatchPenEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 183
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 197
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 189
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v1

    add-int/lit8 v1, v1, 0x16

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    .line 190
    invoke-virtual {p0}, Lcom/htc/textselection/SelectionAnchor$MyImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 191
    .local v0, parent:Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 192
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #parent:Landroid/view/ViewParent;
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 194
    .restart local v0       #parent:Landroid/view/ViewParent;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/textselection/SelectionAnchor$MyImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
