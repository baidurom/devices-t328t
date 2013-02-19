.class Lcom/htc/widget/HtcActionBar$HtcMenuItem;
.super Ljava/lang/Object;
.source "HtcActionBar.java"

# interfaces
.implements Landroid/view/MenuItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HtcActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HtcMenuItem"
.end annotation


# instance fields
.field mItemId:I

.field final synthetic this$0:Lcom/htc/widget/HtcActionBar;


# direct methods
.method public constructor <init>(Lcom/htc/widget/HtcActionBar;I)V
    .locals 0
    .parameter
    .parameter "id"

    .prologue
    .line 2687
    iput-object p1, p0, Lcom/htc/widget/HtcActionBar$HtcMenuItem;->this$0:Lcom/htc/widget/HtcActionBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2688
    iput p2, p0, Lcom/htc/widget/HtcActionBar$HtcMenuItem;->mItemId:I

    .line 2689
    return-void
.end method


# virtual methods
.method public collapseActionView()Z
    .locals 1

    .prologue
    .line 3068
    const/4 v0, 0x0

    return v0
.end method

.method public expandActionView()Z
    .locals 1

    .prologue
    .line 3059
    const/4 v0, 0x0

    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 1

    .prologue
    .line 3050
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    .prologue
    .line 2697
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    .prologue
    .line 2707
    const/4 v0, 0x0

    return v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 2717
    const/4 v0, 0x0

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 2727
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 2737
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId()I
    .locals 1

    .prologue
    .line 2747
    iget v0, p0, Lcom/htc/widget/HtcActionBar$HtcMenuItem;->mItemId:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 2765
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumericShortcut()C
    .locals 1

    .prologue
    .line 2775
    const/4 v0, 0x0

    return v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 2785
    const/4 v0, 0x0

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 2795
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2805
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2815
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 2825
    const/4 v0, 0x0

    return v0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    .prologue
    .line 3077
    const/4 v0, 0x0

    return v0
.end method

.method public isCheckable()Z
    .locals 1

    .prologue
    .line 2835
    const/4 v0, 0x0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 2845
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 2855
    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 2865
    const/4 v0, 0x0

    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 1
    .parameter "actionProvider"

    .prologue
    .line 3041
    const/4 v0, 0x0

    return-object v0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 2881
    const/4 v0, 0x0

    return-object v0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 2875
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 2891
    const/4 v0, 0x0

    return-object v0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 2901
    const/4 v0, 0x0

    return-object v0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 2911
    const/4 v0, 0x0

    return-object v0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 2921
    const/4 v0, 0x0

    return-object v0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 2937
    const/4 v0, 0x0

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 2931
    const/4 v0, 0x0

    return-object v0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 2947
    const/4 v0, 0x0

    return-object v0
.end method

.method public setItemId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 2755
    iput p1, p0, Lcom/htc/widget/HtcActionBar$HtcMenuItem;->mItemId:I

    .line 2756
    return-void
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 2957
    const/4 v0, 0x0

    return-object v0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 1
    .parameter "l"

    .prologue
    .line 3086
    const/4 v0, 0x0

    return-object v0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 2967
    const/4 v0, 0x0

    return-object v0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 2977
    const/4 v0, 0x0

    return-object v0
.end method

.method public setShowAsAction(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 2988
    return-void
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 1
    .parameter "actionEnum"

    .prologue
    .line 3032
    const/4 v0, 0x0

    return-object v0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 3003
    const/4 v0, 0x0

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 2997
    const/4 v0, 0x0

    return-object v0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 3013
    const/4 v0, 0x0

    return-object v0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 3023
    const/4 v0, 0x0

    return-object v0
.end method
