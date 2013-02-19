.class public Lcom/htc/opensense/plugin/DrawableTextCallback;
.super Ljava/lang/Object;
.source "DrawableTextCallback.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DrawableTextCallback"


# instance fields
.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .parameter "tv"

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/htc/opensense/plugin/DrawableTextCallback;->mTextView:Landroid/widget/TextView;

    .line 24
    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 9
    .parameter "who"

    .prologue
    .line 32
    instance-of v5, p1, Lcom/htc/graphics/drawable/UrlDrawable;

    if-eqz v5, :cond_1

    .line 35
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "isDimChanged"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 37
    .local v3, method:Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 38
    .local v4, result:Ljava/lang/Object;
    const/4 v2, 0x0

    .line 39
    .local v2, isDimChanged:Z
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_0

    .line 40
    check-cast v4, Ljava/lang/Boolean;

    .end local v4           #result:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 43
    :cond_0
    if-eqz v2, :cond_2

    .line 44
    const-string v5, "DrawableTextCallback"

    const-string v6, "UrlDrawable requests TextView.setText() again"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    move-object v0, p1

    .line 48
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 50
    iget-object v5, p0, Lcom/htc/opensense/plugin/DrawableTextCallback;->mTextView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/htc/opensense/plugin/DrawableTextCallback;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    sget-object v7, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 73
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v2           #isDimChanged:Z
    .end local v3           #method:Ljava/lang/reflect/Method;
    :cond_1
    :goto_0
    return-void

    .line 53
    .restart local v2       #isDimChanged:Z
    .restart local v3       #method:Ljava/lang/reflect/Method;
    :cond_2
    const-string v5, "DrawableTextCallback"

    const-string v6, "UrlDrawable requests self.invalidate()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v5, p0, Lcom/htc/opensense/plugin/DrawableTextCallback;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->invalidate()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_0

    .line 57
    .end local v2           #isDimChanged:Z
    .end local v3           #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 58
    .local v1, e:Ljava/lang/SecurityException;
    const-string v5, "DrawableTextCallback"

    const-string v6, "failed to invalidateDrawable!"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 59
    .end local v1           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 60
    .local v1, e:Ljava/lang/NoSuchMethodException;
    const-string v5, "DrawableTextCallback"

    const-string v6, "failed to invalidateDrawable!"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 61
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 62
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v5, "DrawableTextCallback"

    const-string v6, "failed to invalidateDrawable!"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 63
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 64
    .local v1, e:Ljava/lang/IllegalAccessException;
    const-string v5, "DrawableTextCallback"

    const-string v6, "failed to invalidateDrawable!"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 65
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 66
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v5, "DrawableTextCallback"

    const-string v6, "failed to invalidateDrawable!"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 67
    .end local v1           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_5
    move-exception v1

    .line 68
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "DrawableTextCallback"

    const-string v6, "failed to invalidateDrawable!"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0
    .parameter "who"
    .parameter "what"
    .parameter "when"

    .prologue
    .line 81
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "who"
    .parameter "what"

    .prologue
    .line 89
    return-void
.end method
