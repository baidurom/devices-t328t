.class Landroid/view/SurfaceBufferHelper;
.super Ljava/lang/Object;
.source "SurfaceBufferHelper.java"


# instance fields
.field private surf:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/view/Surface;)V
    .locals 0
    .parameter "surf"

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Landroid/view/SurfaceBufferHelper;->surf:Landroid/view/Surface;

    .line 15
    return-void
.end method

.method private static native nSetBufferCountHint(Landroid/view/Surface;I)V
.end method


# virtual methods
.method public setBufferCountHint(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 23
    iget-object v0, p0, Landroid/view/SurfaceBufferHelper;->surf:Landroid/view/Surface;

    invoke-static {v0, p1}, Landroid/view/SurfaceBufferHelper;->nSetBufferCountHint(Landroid/view/Surface;I)V

    .line 24
    return-void
.end method
