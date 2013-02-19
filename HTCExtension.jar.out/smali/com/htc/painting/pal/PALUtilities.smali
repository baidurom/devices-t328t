.class public Lcom/htc/painting/pal/PALUtilities;
.super Ljava/lang/Object;
.source "PALUtilities.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PALUtilities"

.field private static sScribblePackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    const-string v0, "pen.scribble.package"

    const-string v1, "com.htc.mysketcher"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/painting/pal/PALUtilities;->sScribblePackageName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disablePal(Landroid/app/Activity;Z)V
    .locals 8
    .parameter "act"
    .parameter "disablePal"

    .prologue
    .line 93
    const-string v3, "PALUtilities"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disablePal, act="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bEnable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    if-nez p0, :cond_0

    .line 97
    const-string v3, "PALUtilities"

    const-string v4, "disablePal, act is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :goto_0
    return-void

    .line 103
    :cond_0
    :try_start_0
    const-class v3, Landroid/view/Window;

    const-string v4, "enablePenLinstener"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 106
    .local v0, Window_enablePenListener:Ljava/lang/reflect/Method;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 109
    .end local v0           #Window_enablePenListener:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 111
    .local v2, nsme:Ljava/lang/NoSuchMethodException;
    const-string v3, "PALUtilities"

    const-string v4, "NoSuchMethodException"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    .end local v2           #nsme:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 113
    .local v1, e:Ljava/lang/IllegalAccessException;
    const-string v3, "PALUtilities"

    const-string v4, "IllegalAccessException"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 114
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 116
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "PALUtilities"

    const-string v4, "InvocationTargetException"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isAutoScribbleEnabled(Landroid/content/Context;)Z
    .locals 4
    .parameter "ctx"

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_enable_sketch"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 77
    .local v0, ret:I
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isEnabledPenEvent(Lcom/htc/painting/pal/LaunchedWinInfo;)Z
    .locals 3
    .parameter "launchedApp"

    .prologue
    const/4 v1, 0x1

    .line 65
    iget v2, p0, Lcom/htc/painting/pal/LaunchedWinInfo;->mPenWorkingMode:I

    and-int/lit8 v0, v2, 0x1

    .line 67
    .local v0, extraFlags:I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static shouldDisableApp(Lcom/htc/painting/pal/LaunchedWinInfo;Lcom/htc/painting/pal/PenApp;)Z
    .locals 2
    .parameter "launchedApp"
    .parameter "application"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/painting/pal/LaunchedWinInfo;->mPackageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/htc/painting/pal/PenApp;->AppPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    const/4 v0, 0x1

    .line 36
    :goto_0
    return v0

    .line 31
    :cond_0
    sget-object v0, Lcom/htc/painting/pal/PALUtilities;->sScribblePackageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/htc/painting/pal/PenApp;->AppPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    invoke-static {p0}, Lcom/htc/painting/pal/PALUtilities;->shouldDisableScribble(Lcom/htc/painting/pal/LaunchedWinInfo;)Z

    move-result v0

    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldDisableScribble(Lcom/htc/painting/pal/LaunchedWinInfo;)Z
    .locals 5
    .parameter "launchedApp"

    .prologue
    const/4 v2, 0x1

    .line 44
    const/4 v0, 0x0

    .line 46
    .local v0, bDisableScribble:Z
    sget-object v3, Lcom/htc/painting/pal/PALUtilities;->sScribblePackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/painting/pal/LaunchedWinInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 57
    :goto_0
    return v2

    .line 50
    :cond_0
    iget v1, p0, Lcom/htc/painting/pal/LaunchedWinInfo;->mPenWorkingMode:I

    .line 51
    .local v1, penWorkingMode:I
    and-int/lit8 v3, v1, 0x2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    and-int/lit8 v3, v1, 0x1

    if-ne v3, v2, :cond_2

    .line 54
    :cond_1
    const/4 v0, 0x1

    :cond_2
    move v2, v0

    .line 57
    goto :goto_0
.end method
