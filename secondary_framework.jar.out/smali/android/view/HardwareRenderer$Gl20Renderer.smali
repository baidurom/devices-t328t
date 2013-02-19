.class Landroid/view/HardwareRenderer$Gl20Renderer;
.super Landroid/view/HardwareRenderer$GlRenderer;
.source "HardwareRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/HardwareRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Gl20Renderer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext;
    }
.end annotation


# static fields
.field private static sPbuffer:Ljavax/microedition/khronos/egl/EGLSurface;

.field private static final sPbufferLock:[Ljava/lang/Object;


# instance fields
.field private mGlCanvas:Landroid/view/GLES20Canvas;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 977
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/view/HardwareRenderer$Gl20Renderer;->sPbufferLock:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Z)V
    .locals 1
    .parameter "translucent"

    .prologue
    .line 1026
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/view/HardwareRenderer$GlRenderer;-><init>(IZ)V

    .line 1027
    return-void
.end method

.method static GLES20SetCacheConfig(IIF)V
    .locals 0
    .parameter "maxTextureSize"
    .parameter "maxLayerSize"
    .parameter "textureFlushRatio"

    .prologue
    .line 1177
    invoke-static {p0, p1, p2}, Landroid/view/GLES20Canvas;->setCacheConfig(IIF)V

    .line 1178
    return-void
.end method

.method static synthetic access$000(Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 973
    invoke-static {p0}, Landroid/view/HardwareRenderer$Gl20Renderer;->usePbufferSurface(Ljavax/microedition/khronos/egl/EGLContext;)V

    return-void
.end method

.method static synthetic access$100()Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 1

    .prologue
    .line 973
    sget-object v0, Landroid/view/HardwareRenderer$Gl20Renderer;->sPbuffer:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object v0
.end method

.method static synthetic access$102(Ljavax/microedition/khronos/egl/EGLSurface;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 0
    .parameter "x0"

    .prologue
    .line 973
    sput-object p0, Landroid/view/HardwareRenderer$Gl20Renderer;->sPbuffer:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object p0
.end method

.method static create(Z)Landroid/view/HardwareRenderer;
    .locals 1
    .parameter "translucent"

    .prologue
    .line 1171
    invoke-static {}, Landroid/view/GLES20Canvas;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1172
    new-instance v0, Landroid/view/HardwareRenderer$Gl20Renderer;

    invoke-direct {v0, p0}, Landroid/view/HardwareRenderer$Gl20Renderer;-><init>(Z)V

    .line 1174
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static destroyHardwareLayer(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 1128
    invoke-virtual {p0}, Landroid/view/View;->destroyLayer()Z

    .line 1130
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v1, p0

    .line 1131
    check-cast v1, Landroid/view/ViewGroup;

    .line 1133
    .local v1, group:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1134
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1135
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/view/HardwareRenderer$Gl20Renderer;->destroyHardwareLayer(Landroid/view/View;)V

    .line 1134
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1138
    .end local v0           #count:I
    .end local v1           #group:Landroid/view/ViewGroup;
    .end local v2           #i:I
    :cond_0
    return-void
.end method

.method private static destroyResources(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 1158
    invoke-virtual {p0}, Landroid/view/View;->destroyHardwareResources()V

    .line 1160
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v1, p0

    .line 1161
    check-cast v1, Landroid/view/ViewGroup;

    .line 1163
    .local v1, group:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1164
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1165
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/view/HardwareRenderer$Gl20Renderer;->destroyResources(Landroid/view/View;)V

    .line 1164
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1168
    .end local v0           #count:I
    .end local v1           #group:Landroid/view/ViewGroup;
    .end local v2           #i:I
    :cond_0
    return-void
.end method

.method static trimMemory(I)V
    .locals 2
    .parameter "level"

    .prologue
    .line 1180
    sget-object v1, Landroid/view/HardwareRenderer$Gl20Renderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/view/HardwareRenderer$Gl20Renderer;->sEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v1, :cond_1

    .line 1200
    :cond_0
    :goto_0
    return-void

    .line 1182
    :cond_1
    sget-object v1, Landroid/view/HardwareRenderer$Gl20Renderer;->sEglContextStorage:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext;

    .line 1184
    .local v0, managedContext:Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext;
    if-eqz v0, :cond_0

    .line 1187
    invoke-virtual {v0}, Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext;->getContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    invoke-static {v1}, Landroid/view/HardwareRenderer$Gl20Renderer;->usePbufferSurface(Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 1190
    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    .line 1194
    :sswitch_0
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/view/GLES20Canvas;->flushCaches(I)V

    goto :goto_0

    .line 1197
    :sswitch_1
    const/4 v1, 0x2

    invoke-static {v1}, Landroid/view/GLES20Canvas;->flushCaches(I)V

    goto :goto_0

    .line 1190
    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_0
        0x28 -> :sswitch_0
        0x3c -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method private static usePbufferSurface(Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 5
    .parameter "eglContext"

    .prologue
    .line 1203
    sget-object v1, Landroid/view/HardwareRenderer$Gl20Renderer;->sPbufferLock:[Ljava/lang/Object;

    monitor-enter v1

    .line 1206
    :try_start_0
    sget-object v0, Landroid/view/HardwareRenderer$Gl20Renderer;->sPbuffer:Ljavax/microedition/khronos/egl/EGLSurface;

    if-nez v0, :cond_0

    .line 1207
    sget-object v0, Landroid/view/HardwareRenderer$Gl20Renderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$Gl20Renderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Landroid/view/HardwareRenderer$Gl20Renderer;->sEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-interface {v0, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    sput-object v0, Landroid/view/HardwareRenderer$Gl20Renderer;->sPbuffer:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1211
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1212
    sget-object v0, Landroid/view/HardwareRenderer$Gl20Renderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Landroid/view/HardwareRenderer$Gl20Renderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Landroid/view/HardwareRenderer$Gl20Renderer;->sPbuffer:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Landroid/view/HardwareRenderer$Gl20Renderer;->sPbuffer:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2, v3, p0}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1213
    return-void

    .line 1211
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1207
    nop

    :array_0
    .array-data 0x4
        0x57t 0x30t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x56t 0x30t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method canDraw()Z
    .locals 1

    .prologue
    .line 1057
    invoke-super {p0}, Landroid/view/HardwareRenderer$GlRenderer;->canDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method createCanvas()Landroid/view/GLES20Canvas;
    .locals 2

    .prologue
    .line 1031
    new-instance v0, Landroid/view/GLES20Canvas;

    iget-boolean v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mTranslucent:Z

    invoke-direct {v0, v1}, Landroid/view/GLES20Canvas;-><init>(Z)V

    iput-object v0, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    return-object v0
.end method

.method createDisplayList()Landroid/view/DisplayList;
    .locals 1

    .prologue
    .line 1101
    new-instance v0, Landroid/view/GLES20DisplayList;

    invoke-direct {v0}, Landroid/view/GLES20DisplayList;-><init>()V

    return-object v0
.end method

.method createHardwareLayer(IIZ)Landroid/view/HardwareLayer;
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "isOpaque"

    .prologue
    .line 1111
    new-instance v0, Landroid/view/GLES20RenderLayer;

    invoke-direct {v0, p1, p2, p3}, Landroid/view/GLES20RenderLayer;-><init>(IIZ)V

    return-object v0
.end method

.method createHardwareLayer(Z)Landroid/view/HardwareLayer;
    .locals 1
    .parameter "isOpaque"

    .prologue
    .line 1106
    new-instance v0, Landroid/view/GLES20TextureLayer;

    invoke-direct {v0, p1}, Landroid/view/GLES20TextureLayer;-><init>(Z)V

    return-object v0
.end method

.method createSurfaceTexture(Landroid/view/HardwareLayer;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .parameter "layer"

    .prologue
    .line 1116
    check-cast p1, Landroid/view/GLES20TextureLayer;

    .end local p1
    invoke-virtual {p1}, Landroid/view/GLES20TextureLayer;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    return-object v0
.end method

.method destroy(Z)V
    .locals 3
    .parameter "full"

    .prologue
    const/4 v2, 0x0

    .line 1083
    :try_start_0
    invoke-super {p0, p1}, Landroid/view/HardwareRenderer$GlRenderer;->destroy(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1085
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    if-eqz v0, :cond_0

    .line 1086
    iput-object v2, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    .line 1089
    :cond_0
    return-void

    .line 1085
    :catchall_0
    move-exception v0

    if-eqz p1, :cond_1

    iget-object v1, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    if-eqz v1, :cond_1

    .line 1086
    iput-object v2, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    .line 1085
    :cond_1
    throw v0
.end method

.method destroyHardwareResources(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 1142
    if-eqz p1, :cond_1

    .line 1143
    const/4 v1, 0x1

    .line 1144
    .local v1, needsContext:Z
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$Gl20Renderer;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/HardwareRenderer$Gl20Renderer;->checkCurrent()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .line 1146
    :cond_0
    if-eqz v1, :cond_3

    .line 1147
    sget-object v2, Landroid/view/HardwareRenderer$Gl20Renderer;->sEglContextStorage:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext;

    .line 1148
    .local v0, managedContext:Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext;
    if-nez v0, :cond_2

    .line 1155
    .end local v0           #managedContext:Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext;
    .end local v1           #needsContext:Z
    :cond_1
    :goto_0
    return-void

    .line 1149
    .restart local v0       #managedContext:Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext;
    .restart local v1       #needsContext:Z
    :cond_2
    invoke-virtual {v0}, Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext;->getContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    invoke-static {v2}, Landroid/view/HardwareRenderer$Gl20Renderer;->usePbufferSurface(Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 1152
    .end local v0           #managedContext:Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext;
    :cond_3
    invoke-static {p1}, Landroid/view/HardwareRenderer$Gl20Renderer;->destroyResources(Landroid/view/View;)V

    .line 1153
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/view/GLES20Canvas;->flushCaches(I)V

    goto :goto_0
.end method

.method destroyLayers(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1121
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/HardwareRenderer$Gl20Renderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/HardwareRenderer$Gl20Renderer;->checkCurrent()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1122
    invoke-static {p1}, Landroid/view/HardwareRenderer$Gl20Renderer;->destroyHardwareLayer(Landroid/view/View;)V

    .line 1123
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/view/GLES20Canvas;->flushCaches(I)V

    .line 1125
    :cond_0
    return-void
.end method

.method endTileRendering()V
    .locals 1

    .prologue
    .line 1077
    iget-object v0, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    invoke-virtual {v0}, Landroid/view/GLES20Canvas;->endTileRendering()V

    .line 1078
    return-void
.end method

.method getConfig(Z)[I
    .locals 6
    .parameter "dirtyRegions"

    .prologue
    const/4 v5, 0x4

    const/4 v0, 0x0

    const/16 v4, 0x8

    .line 1036
    const/16 v1, 0x11

    new-array v1, v1, [I

    const/16 v2, 0x3040

    aput v2, v1, v0

    const/4 v2, 0x1

    aput v5, v1, v2

    const/4 v2, 0x2

    const/16 v3, 0x3024

    aput v3, v1, v2

    const/4 v2, 0x3

    aput v4, v1, v2

    const/16 v2, 0x3023

    aput v2, v1, v5

    const/4 v2, 0x5

    aput v4, v1, v2

    const/4 v2, 0x6

    const/16 v3, 0x3022

    aput v3, v1, v2

    const/4 v2, 0x7

    aput v4, v1, v2

    const/16 v2, 0x3021

    aput v2, v1, v4

    const/16 v2, 0x9

    aput v4, v1, v2

    const/16 v2, 0xa

    const/16 v3, 0x3025

    aput v3, v1, v2

    const/16 v2, 0xb

    aput v0, v1, v2

    const/16 v2, 0xc

    const/16 v3, 0x3026

    aput v3, v1, v2

    const/16 v2, 0xd

    aput v0, v1, v2

    const/16 v2, 0xe

    const/16 v3, 0x3033

    aput v3, v1, v2

    const/16 v2, 0xf

    if-eqz p1, :cond_0

    const/16 v0, 0x400

    :cond_0
    or-int/lit8 v0, v0, 0x4

    aput v0, v1, v2

    const/16 v0, 0x10

    const/16 v2, 0x3038

    aput v2, v1, v0

    return-object v1
.end method

.method initCaches()V
    .locals 0

    .prologue
    .line 1052
    invoke-static {}, Landroid/view/GLES20Canvas;->initCaches()V

    .line 1053
    return-void
.end method

.method onPostDraw()V
    .locals 1

    .prologue
    .line 1067
    iget-object v0, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    invoke-virtual {v0}, Landroid/view/GLES20Canvas;->onPostDraw()V

    .line 1068
    return-void
.end method

.method onPreDraw(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "dirty"

    .prologue
    .line 1062
    iget-object v0, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    invoke-virtual {v0, p1}, Landroid/view/GLES20Canvas;->onPreDraw(Landroid/graphics/Rect;)V

    .line 1063
    return-void
.end method

.method setup(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1093
    invoke-super {p0, p1, p2}, Landroid/view/HardwareRenderer$GlRenderer;->setup(II)V

    .line 1094
    iget-boolean v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mVsyncDisabled:Z

    if-eqz v0, :cond_0

    .line 1095
    invoke-static {}, Landroid/view/GLES20Canvas;->disableVsync()V

    .line 1097
    :cond_0
    return-void
.end method

.method startTileRendering(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "dirty"

    .prologue
    .line 1072
    iget-object v0, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    invoke-virtual {v0, p1}, Landroid/view/GLES20Canvas;->startTileRendering(Landroid/graphics/Rect;)V

    .line 1073
    return-void
.end method
