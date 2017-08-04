.class public Lcom/meizu/common/widget/ActionMenuItemView;
.super Landroid/widget/LinearLayout;
.source "ActionMenuItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/ActionMenuItemView$MenuDismissListener;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "ActionMenuItemView"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIcon:Landroid/widget/ImageView;

.field private mIsShowing:Z

.field private mPopup:Landroid/widget/PopupMenu;

.field private mTitle:Landroid/widget/TextView;

.field private mborderless:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 194
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/ActionMenuItemView;->mIsShowing:Z

    .line 195
    iput-object p1, p0, Lcom/meizu/common/widget/ActionMenuItemView;->mContext:Landroid/content/Context;

    .line 196
    invoke-direct {p0}, Lcom/meizu/common/widget/ActionMenuItemView;->initView()V

    .line 197
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 188
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/ActionMenuItemView;->mIsShowing:Z

    .line 189
    iput-object p1, p0, Lcom/meizu/common/widget/ActionMenuItemView;->mContext:Landroid/content/Context;

    .line 190
    invoke-direct {p0}, Lcom/meizu/common/widget/ActionMenuItemView;->initView()V

    .line 191
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 182
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/ActionMenuItemView;->mIsShowing:Z

    .line 183
    iput-object p1, p0, Lcom/meizu/common/widget/ActionMenuItemView;->mContext:Landroid/content/Context;

    .line 184
    invoke-direct {p0}, Lcom/meizu/common/widget/ActionMenuItemView;->initView()V

    .line 185
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/ActionMenuItemView;)Landroid/widget/PopupMenu;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/ActionMenuItemView;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/meizu/common/widget/ActionMenuItemView;->mPopup:Landroid/widget/PopupMenu;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/ActionMenuItemView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/ActionMenuItemView;

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/meizu/common/widget/ActionMenuItemView;->mIsShowing:Z

    return v0
.end method

.method static synthetic access$102(Lcom/meizu/common/widget/ActionMenuItemView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/ActionMenuItemView;
    .param p1, "x1"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/meizu/common/widget/ActionMenuItemView;->mIsShowing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/ActionMenuItemView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/ActionMenuItemView;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/meizu/common/widget/ActionMenuItemView;->mborderless:Landroid/widget/ImageView;

    return-object v0
.end method

.method private dismiss()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/meizu/common/widget/ActionMenuItemView;->mPopup:Landroid/widget/PopupMenu;

    if-nez v0, :cond_0

    .line 302
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/ActionMenuItemView;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    goto :goto_0
.end method

.method private initView()V
    .locals 6

    .prologue
    .line 200
    iget-object v4, p0, Lcom/meizu/common/widget/ActionMenuItemView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/meizu/common/R$layout;->mc_action_menu_view:I

    invoke-virtual {v4, v5, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 202
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 206
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/meizu/common/widget/ActionMenuItemView;->setClickable(Z)V

    const/16 v4, 0x11

    .line 207
    invoke-virtual {p0, v4}, Lcom/meizu/common/widget/ActionMenuItemView;->setGravity(I)V

    .line 209
    invoke-virtual {p0}, Lcom/meizu/common/widget/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/meizu/common/R$dimen;->mz_action_button_min_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 211
    .local v3, "minWidth":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/meizu/common/R$dimen;->mz_action_button_min_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 213
    .local v2, "minHeight":I
    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/ActionMenuItemView;->setMinimumWidth(I)V

    .line 214
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/ActionMenuItemView;->setMinimumHeight(I)V

    .line 215
    sget v4, Lcom/meizu/common/R$id;->menu_text:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/meizu/common/widget/ActionMenuItemView;->mTitle:Landroid/widget/TextView;

    .line 216
    sget v4, Lcom/meizu/common/R$id;->menu_image:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/meizu/common/widget/ActionMenuItemView;->mIcon:Landroid/widget/ImageView;

    .line 217
    sget v4, Lcom/meizu/common/R$id;->borderless:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/meizu/common/widget/ActionMenuItemView;->mborderless:Landroid/widget/ImageView;

    .line 218
    iget-object v4, p0, Lcom/meizu/common/widget/ActionMenuItemView;->mborderless:Landroid/widget/ImageView;

    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setRotation(F)V

    .line 219
    iget-object v4, p0, Lcom/meizu/common/widget/ActionMenuItemView;->mTitle:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setActivated(Z)V

    .line 220
    new-instance v4, Lcom/meizu/common/widget/ActionMenuItemView$1;

    invoke-direct {v4, p0}, Lcom/meizu/common/widget/ActionMenuItemView$1;-><init>(Lcom/meizu/common/widget/ActionMenuItemView;)V

    invoke-virtual {p0, v4}, Lcom/meizu/common/widget/ActionMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    invoke-virtual {p0}, Lcom/meizu/common/widget/ActionMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/meizu/common/R$drawable;->mc_action_menu_view_background:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 235
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/ActionMenuItemView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 236
    return-void

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v2    # "minHeight":I
    .end local v3    # "minWidth":I
    :cond_0
    const-string/jumbo v4, "CustomItemView"

    const-string/jumbo v5, "can not inflate the view"

    .line 203
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-void
.end method


# virtual methods
.method public getIcon()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/meizu/common/widget/ActionMenuItemView;->mIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getPopup()Landroid/widget/PopupMenu;
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/meizu/common/widget/ActionMenuItemView;->mPopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 331
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/ActionMenuItemView;->mPopup:Landroid/widget/PopupMenu;

    new-instance v1, Lcom/meizu/common/widget/ActionMenuItemView$MenuDismissListener;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/ActionMenuItemView$MenuDismissListener;-><init>(Lcom/meizu/common/widget/ActionMenuItemView;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 332
    iget-object v0, p0, Lcom/meizu/common/widget/ActionMenuItemView;->mPopup:Landroid/widget/PopupMenu;

    return-object v0

    .line 330
    :cond_0
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/meizu/common/widget/ActionMenuItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/meizu/common/widget/ActionMenuItemView;->mPopup:Landroid/widget/PopupMenu;

    goto :goto_0
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/meizu/common/widget/ActionMenuItemView;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public inflateMenu(I)V
    .locals 2
    .param p1, "menuRes"    # I

    .prologue
    .line 293
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/meizu/common/widget/ActionMenuItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/meizu/common/widget/ActionMenuItemView;->mPopup:Landroid/widget/PopupMenu;

    .line 294
    iget-object v0, p0, Lcom/meizu/common/widget/ActionMenuItemView;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/ActionMenuItemView;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 295
    iget-object v0, p0, Lcom/meizu/common/widget/ActionMenuItemView;->mPopup:Landroid/widget/PopupMenu;

    new-instance v1, Lcom/meizu/common/widget/ActionMenuItemView$MenuDismissListener;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/ActionMenuItemView$MenuDismissListener;-><init>(Lcom/meizu/common/widget/ActionMenuItemView;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 296
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 358
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/meizu/common/widget/ActionMenuItemView;

    .line 359
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 360
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 240
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 241
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/meizu/common/widget/ActionMenuItemView;->mIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 258
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/ActionMenuItemView;->mTitle:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 261
    :goto_1
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/ActionMenuItemView;->mIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/meizu/common/widget/ActionMenuItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/ActionMenuItemView;->mTitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/PopupMenu$OnDismissListener;

    .prologue
    .line 319
    iget-object v0, p0, Lcom/meizu/common/widget/ActionMenuItemView;->mPopup:Landroid/widget/PopupMenu;

    if-nez v0, :cond_0

    .line 322
    :goto_0
    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/ActionMenuItemView;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    goto :goto_0
.end method

.method public setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/PopupMenu$OnMenuItemClickListener;

    .prologue
    .line 309
    iget-object v0, p0, Lcom/meizu/common/widget/ActionMenuItemView;->mPopup:Landroid/widget/PopupMenu;

    if-nez v0, :cond_0

    .line 312
    :goto_0
    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/ActionMenuItemView;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    goto :goto_0
.end method

.method public setPopupCenterHorizontal(Z)V
    .locals 0
    .param p1, "center"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 343
    return-void
.end method

.method public setPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 246
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 247
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/meizu/common/widget/ActionMenuItemView;->mTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 272
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/ActionMenuItemView;->mIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 275
    :goto_1
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/ActionMenuItemView;->mTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/meizu/common/widget/ActionMenuItemView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/ActionMenuItemView;->mIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
