.class public Lcom/htc/wrap/android/view/HtcWrapIWindowManager;
.super Ljava/lang/Object;
.source "HtcWrapIWindowManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static freezeRotation()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-static {}, Lcom/htc/wrap/android/view/HtcWrapIWindowManager;->getIWM()Landroid/view/IWindowManager;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->freezeRotation(I)V

    .line 48
    return-void
.end method

.method public static freezeRotation(I)V
    .locals 1
    .parameter "rotation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-static {}, Lcom/htc/wrap/android/view/HtcWrapIWindowManager;->getIWM()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/IWindowManager;->freezeRotation(I)V

    .line 40
    return-void
.end method

.method private static getIWM()Landroid/view/IWindowManager;
    .locals 1

    .prologue
    .line 13
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    return-object v0
.end method

.method public static overrideHtcGlAppTransitionAnimation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "animName"
    .parameter "isOpen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 127
    invoke-static {}, Lcom/htc/wrap/android/view/HtcWrapIWindowManager;->getIWM()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/view/IWindowManager;->overrideHtcGlAppTransitionAnimation(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public static overrideZoomPointForHtcGlAppTransitionAnimation(II)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 139
    invoke-static {}, Lcom/htc/wrap/android/view/HtcWrapIWindowManager;->getIWM()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/view/IWindowManager;->overrideZoomPointForHtcGlAppTransitionAnimation(II)V

    .line 140
    return-void
.end method

.method public static prepareAppTransition(IZ)V
    .locals 1
    .parameter "transit"
    .parameter "alwaysKeepCurrent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-static {}, Lcom/htc/wrap/android/view/HtcWrapIWindowManager;->getIWM()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/view/IWindowManager;->prepareAppTransition(IZ)V

    .line 79
    return-void
.end method

.method public static setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIILandroid/os/IBinder;Z)V
    .locals 11
    .parameter "token"
    .parameter "pkg"
    .parameter "theme"
    .parameter "compatInfo"
    .parameter "nonLocalizedLabel"
    .parameter "labelRes"
    .parameter "icon"
    .parameter "windowFlags"
    .parameter "transferFrom"
    .parameter "createIfNeeded"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-static {}, Lcom/htc/wrap/android/view/HtcWrapIWindowManager;->getIWM()Landroid/view/IWindowManager;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-interface/range {v0 .. v10}, Landroid/view/IWindowManager;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIILandroid/os/IBinder;Z)V

    .line 92
    return-void
.end method

.method public static setPenSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-static {}, Lcom/htc/wrap/android/view/HtcWrapIWindowManager;->getIWM()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/view/IWindowManager;->setPenSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public static setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V
    .locals 1
    .parameter "enabled"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-static {}, Lcom/htc/wrap/android/view/HtcWrapIWindowManager;->getIWM()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/IWindowManager;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static statusBarVisibilityChanged(I)V
    .locals 1
    .parameter "visibility"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-static {}, Lcom/htc/wrap/android/view/HtcWrapIWindowManager;->getIWM()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/IWindowManager;->statusBarVisibilityChanged(I)V

    .line 70
    return-void
.end method

.method public static thawRotation()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-static {}, Lcom/htc/wrap/android/view/HtcWrapIWindowManager;->getIWM()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IWindowManager;->thawRotation()V

    .line 59
    return-void
.end method


# virtual methods
.method public blockInputEvents(Z)V
    .locals 1
    .parameter "bBlock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-static {}, Lcom/htc/wrap/android/view/HtcWrapIWindowManager;->getIWM()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->blockInputEvents(Z)V

    .line 115
    return-void
.end method

.method public broadcastKeyinEvent(Z)V
    .locals 1
    .parameter "bBoradcastKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-static {}, Lcom/htc/wrap/android/view/HtcWrapIWindowManager;->getIWM()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->broadcastKeyinEvent(Z)V

    .line 106
    return-void
.end method

.method public broadcastMotionEvent(Z)V
    .locals 1
    .parameter "bBoradcastMotion"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-static {}, Lcom/htc/wrap/android/view/HtcWrapIWindowManager;->getIWM()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->broadcastMotionEvent(Z)V

    .line 109
    return-void
.end method

.method public broadcastTrackballEvent(Z)V
    .locals 1
    .parameter "bBoradcastTrackball"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-static {}, Lcom/htc/wrap/android/view/HtcWrapIWindowManager;->getIWM()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->broadcastTrackballEvent(Z)V

    .line 112
    return-void
.end method
