.class Lcom/htc/opensense/widget/SocialnetworkTextView$DrawableCallback;
.super Ljava/lang/Object;
.source "SocialnetworkTextView.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/widget/SocialnetworkTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawableCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/widget/SocialnetworkTextView;


# direct methods
.method private constructor <init>(Lcom/htc/opensense/widget/SocialnetworkTextView;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/htc/opensense/widget/SocialnetworkTextView$DrawableCallback;->this$0:Lcom/htc/opensense/widget/SocialnetworkTextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense/widget/SocialnetworkTextView;Lcom/htc/opensense/widget/SocialnetworkTextView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/SocialnetworkTextView$DrawableCallback;-><init>(Lcom/htc/opensense/widget/SocialnetworkTextView;)V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "who"

    .prologue
    .line 183
    instance-of v0, p1, Lcom/htc/graphics/drawable/UrlDrawable;

    if-eqz v0, :cond_0

    .line 184
    check-cast p1, Lcom/htc/graphics/drawable/UrlDrawable;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/graphics/drawable/UrlDrawable;->isDimChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    const-string v0, "wuman"

    const-string v1, "UrlDrawable requests TextView.setText() again!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/htc/opensense/widget/SocialnetworkTextView$DrawableCallback;->this$0:Lcom/htc/opensense/widget/SocialnetworkTextView;

    iget-object v1, p0, Lcom/htc/opensense/widget/SocialnetworkTextView$DrawableCallback;->this$0:Lcom/htc/opensense/widget/SocialnetworkTextView;

    invoke-virtual {v1}, Lcom/htc/opensense/widget/SocialnetworkTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/widget/SocialnetworkTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    const-string v0, "wuman"

    const-string v1, "UrlDrawable requests TextView.invalidate()!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Lcom/htc/opensense/widget/SocialnetworkTextView$DrawableCallback;->this$0:Lcom/htc/opensense/widget/SocialnetworkTextView;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/SocialnetworkTextView;->invalidate()V

    goto :goto_0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0
    .parameter "who"
    .parameter "what"
    .parameter "when"

    .prologue
    .line 207
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "who"
    .parameter "what"

    .prologue
    .line 215
    return-void
.end method
