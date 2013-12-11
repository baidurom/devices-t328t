.class public Landroid/widget/HtcSkinUtil;
.super Ljava/lang/Object;
.source "HtcSkinUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcSkinUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAppliedSkinPackageName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 69
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 71
    .local v0, am:Landroid/app/IActivityManager;
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 72
    .local v1, config:Landroid/content/res/Configuration;
    iget-object v3, v1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v1           #config:Landroid/content/res/Configuration;
    :goto_0
    return-object v3

    .line 73
    :catch_0
    move-exception v2

    .line 74
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 76
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 5
    .parameter "context"
    .parameter "resName"
    .parameter "defRes"

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->allowSkinChange:Z

    if-eqz v2, :cond_0

    .line 50
    invoke-static {}, Landroid/widget/HtcSkinUtil;->getAppliedSkinPackageName()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, packageName:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    .end local v1           #packageName:Ljava/lang/String;
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 54
    .restart local v1       #packageName:Ljava/lang/String;
    .restart local p2
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "color"

    invoke-virtual {v2, p1, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 55
    .local v0, id:I
    if-nez v0, :cond_2

    .line 56
    const-string v2, "HtcSkinUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No such resource was found with give name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , requested by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move p2, v0

    .line 60
    goto :goto_0
.end method

.method public static getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 5
    .parameter "context"
    .parameter "resName"
    .parameter "defRes"

    .prologue
    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->allowSkinChange:Z

    if-eqz v2, :cond_0

    .line 28
    invoke-static {}, Landroid/widget/HtcSkinUtil;->getAppliedSkinPackageName()Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, packageName:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    .end local v1           #packageName:Ljava/lang/String;
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 32
    .restart local v1       #packageName:Ljava/lang/String;
    .restart local p2
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "drawable"

    invoke-virtual {v2, p1, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 33
    .local v0, id:I
    if-nez v0, :cond_2

    .line 34
    const-string v2, "HtcSkinUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No such resource was found with give name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , requested by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move p2, v0

    .line 38
    goto :goto_0
.end method
