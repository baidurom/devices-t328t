.class public Lcom/htc/widget/HeaderBar$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "HeaderBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HeaderBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CENTER_PANEL:I = 0x3

.field public static final LEFT_PANEL:I = 0x1

.field public static final RIGHT_PANEL:I = 0x2


# instance fields
.field public panelGravity:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x2

    .line 1181
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1150
    iput v0, p0, Lcom/htc/widget/HeaderBar$LayoutParams;->panelGravity:I

    .line 1182
    iput v0, p0, Lcom/htc/widget/HeaderBar$LayoutParams;->panelGravity:I

    .line 1183
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "gravity"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1191
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1150
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/widget/HeaderBar$LayoutParams;->panelGravity:I

    .line 1192
    iput p3, p0, Lcom/htc/widget/HeaderBar$LayoutParams;->panelGravity:I

    .line 1193
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrset"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 1163
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1150
    iput v2, p0, Lcom/htc/widget/HeaderBar$LayoutParams;->panelGravity:I

    .line 1168
    sget-object v1, Lcom/htc/R$styleable;->HeaderBar_Layout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1169
    .local v0, array:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HeaderBar$LayoutParams;->panelGravity:I

    .line 1171
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1172
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "params"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x2

    .line 1202
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1150
    iput v0, p0, Lcom/htc/widget/HeaderBar$LayoutParams;->panelGravity:I

    .line 1203
    iput v0, p0, Lcom/htc/widget/HeaderBar$LayoutParams;->panelGravity:I

    .line 1204
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;I)V
    .locals 1
    .parameter "params"
    .parameter "gravity"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1212
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1150
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/widget/HeaderBar$LayoutParams;->panelGravity:I

    .line 1213
    iput p2, p0, Lcom/htc/widget/HeaderBar$LayoutParams;->panelGravity:I

    .line 1214
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "output"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " viewWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/HeaderBar$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ViewHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/HeaderBar$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " panelGravity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/HeaderBar$LayoutParams;->panelGravity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
