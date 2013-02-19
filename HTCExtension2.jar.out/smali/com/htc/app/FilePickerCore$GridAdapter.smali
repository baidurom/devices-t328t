.class public Lcom/htc/app/FilePickerCore$GridAdapter;
.super Landroid/widget/BaseAdapter;
.source "FilePickerCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GridAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/app/FilePickerCore$GridAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field iconarray:[Ljava/lang/Integer;

.field private inflater:Landroid/view/LayoutInflater;

.field name:[Ljava/lang/String;

.field tab:[Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/app/FilePickerCore;


# direct methods
.method public constructor <init>(Lcom/htc/app/FilePickerCore;Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/Integer;[Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "name"
    .parameter "iconarray"
    .parameter "tab"

    .prologue
    .line 2468
    iput-object p1, p0, Lcom/htc/app/FilePickerCore$GridAdapter;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2469
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerCore$GridAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 2470
    iput-object p3, p0, Lcom/htc/app/FilePickerCore$GridAdapter;->name:[Ljava/lang/String;

    .line 2471
    iput-object p4, p0, Lcom/htc/app/FilePickerCore$GridAdapter;->iconarray:[Ljava/lang/Integer;

    .line 2472
    iput-object p5, p0, Lcom/htc/app/FilePickerCore$GridAdapter;->tab:[Ljava/lang/String;

    .line 2473
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 2477
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$GridAdapter;->name:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 2482
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 2487
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2493
    if-nez p2, :cond_0

    .line 2494
    new-instance v0, Lcom/htc/app/FilePickerCore$GridAdapter$ViewHolder;

    invoke-direct {v0, p0, v5}, Lcom/htc/app/FilePickerCore$GridAdapter$ViewHolder;-><init>(Lcom/htc/app/FilePickerCore$GridAdapter;Lcom/htc/app/FilePickerCore$1;)V

    .line 2495
    .local v0, holder:Lcom/htc/app/FilePickerCore$GridAdapter$ViewHolder;
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$GridAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x2090033

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2496
    const v2, 0x20200c7

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/htc/app/FilePickerCore$GridAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    .line 2497
    iget-object v2, v0, Lcom/htc/app/FilePickerCore$GridAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2499
    .local v1, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$GridAdapter;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->gridItemSize:I
    invoke-static {v2}, Lcom/htc/app/FilePickerCore;->access$4400(Lcom/htc/app/FilePickerCore;)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2500
    iget-object v2, p0, Lcom/htc/app/FilePickerCore$GridAdapter;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->gridItemSize:I
    invoke-static {v2}, Lcom/htc/app/FilePickerCore;->access$4400(Lcom/htc/app/FilePickerCore;)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2501
    iget-object v2, v0, Lcom/htc/app/FilePickerCore$GridAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2502
    iget-object v2, v0, Lcom/htc/app/FilePickerCore$GridAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/htc/app/FilePickerCore$GridAdapter;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->gridItemBkg:Landroid/graphics/drawable/LayerDrawable;
    invoke-static {v3}, Lcom/htc/app/FilePickerCore;->access$4500(Lcom/htc/app/FilePickerCore;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2503
    iget-object v2, v0, Lcom/htc/app/FilePickerCore$GridAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 2504
    const v2, 0x20200c8

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/htc/app/FilePickerCore$GridAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    .line 2505
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2509
    .end local v1           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    iget-object v2, v0, Lcom/htc/app/FilePickerCore$GridAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/htc/app/FilePickerCore$GridAdapter;->iconarray:[Ljava/lang/Integer;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2510
    iget-object v2, v0, Lcom/htc/app/FilePickerCore$GridAdapter$ViewHolder;->tv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/htc/app/FilePickerCore$GridAdapter;->name:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2511
    return-object p2

    .line 2507
    .end local v0           #holder:Lcom/htc/app/FilePickerCore$GridAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/app/FilePickerCore$GridAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/htc/app/FilePickerCore$GridAdapter$ViewHolder;
    goto :goto_0
.end method
