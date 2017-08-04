.class Lcom/meizu/common/preference/ListPreference$DropdownPopup;
.super Landroid/widget/ListPopupWindow;
.source "ListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/preference/ListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropdownPopup"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field final synthetic this$0:Lcom/meizu/common/preference/ListPreference;


# direct methods
.method public constructor <init>(Lcom/meizu/common/preference/ListPreference;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->this$0:Lcom/meizu/common/preference/ListPreference;

    .line 173
    invoke-direct {p0, p2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 175
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->setModal(Z)V

    const/4 v0, 0x0

    .line 176
    invoke-virtual {p0, v0}, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->setPromptPosition(I)V

    .line 177
    new-instance v0, Lcom/meizu/common/preference/ListPreference$DropdownPopup$1;

    invoke-direct {v0, p0, p1}, Lcom/meizu/common/preference/ListPreference$DropdownPopup$1;-><init>(Lcom/meizu/common/preference/ListPreference$DropdownPopup;Lcom/meizu/common/preference/ListPreference;)V

    invoke-virtual {p0, v0}, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 185
    return-void
.end method


# virtual methods
.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 189
    invoke-super {p0, p1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 190
    iput-object p1, p0, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    .line 191
    return-void
.end method

.method public show()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 195
    iget-object v7, p0, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->this$0:Lcom/meizu/common/preference/ListPreference;

    invoke-static {v7}, Lcom/meizu/common/preference/ListPreference;->access$100(Lcom/meizu/common/preference/ListPreference;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 196
    .local v0, "anchorViewPaddingLeft":I
    iget-object v7, p0, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->this$0:Lcom/meizu/common/preference/ListPreference;

    invoke-static {v7}, Lcom/meizu/common/preference/ListPreference;->access$100(Lcom/meizu/common/preference/ListPreference;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    .line 197
    .local v1, "anchorViewPaddingRight":I
    iget-object v7, p0, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->this$0:Lcom/meizu/common/preference/ListPreference;

    invoke-static {v7}, Lcom/meizu/common/preference/ListPreference;->access$100(Lcom/meizu/common/preference/ListPreference;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 200
    .local v2, "anchorViewWidth":I
    iget-object v7, p0, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->this$0:Lcom/meizu/common/preference/ListPreference;

    invoke-static {v7}, Lcom/meizu/common/preference/ListPreference;->access$200(Lcom/meizu/common/preference/ListPreference;)I

    move-result v7

    if-gtz v7, :cond_2

    .line 203
    :cond_0
    iget-object v7, p0, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->this$0:Lcom/meizu/common/preference/ListPreference;

    sub-int v8, v2, v0

    sub-int/2addr v8, v1

    invoke-static {v7, v8}, Lcom/meizu/common/preference/ListPreference;->access$202(Lcom/meizu/common/preference/ListPreference;I)I

    .line 206
    :goto_0
    iget-object v7, p0, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->this$0:Lcom/meizu/common/preference/ListPreference;

    invoke-static {v7}, Lcom/meizu/common/preference/ListPreference;->access$200(Lcom/meizu/common/preference/ListPreference;)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->setContentWidth(I)V

    .line 210
    :try_start_0
    invoke-static {}, Lcom/meizu/common/preference/ListPreference;->access$300()Ljava/lang/reflect/Method;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 213
    :goto_1
    invoke-static {}, Lcom/meizu/common/preference/ListPreference;->access$300()Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v7, p0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_2
    iget-object v7, p0, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->this$0:Lcom/meizu/common/preference/ListPreference;

    invoke-static {v7}, Lcom/meizu/common/preference/ListPreference;->access$400(Lcom/meizu/common/preference/ListPreference;)I

    move-result v7

    if-gtz v7, :cond_4

    .line 243
    :cond_1
    :goto_3
    iget-object v7, p0, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->this$0:Lcom/meizu/common/preference/ListPreference;

    iget-object v8, p0, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->this$0:Lcom/meizu/common/preference/ListPreference;

    iget-object v9, p0, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->this$0:Lcom/meizu/common/preference/ListPreference;

    invoke-virtual {v9}, Lcom/meizu/common/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/meizu/common/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/meizu/common/preference/ListPreference;->access$002(Lcom/meizu/common/preference/ListPreference;I)I

    const/4 v7, 0x2

    .line 244
    invoke-virtual {p0, v7}, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->setInputMethodMode(I)V

    .line 245
    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    .line 246
    invoke-virtual {p0}, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v14}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 249
    iget-object v7, p0, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->this$0:Lcom/meizu/common/preference/ListPreference;

    invoke-static {v7}, Lcom/meizu/common/preference/ListPreference;->access$000(Lcom/meizu/common/preference/ListPreference;)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->setSelection(I)V

    .line 250
    iget-object v7, p0, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->this$0:Lcom/meizu/common/preference/ListPreference;

    invoke-virtual {p0, v7}, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 251
    return-void

    .line 200
    :cond_2
    iget-object v7, p0, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->this$0:Lcom/meizu/common/preference/ListPreference;

    invoke-static {v7}, Lcom/meizu/common/preference/ListPreference;->access$200(Lcom/meizu/common/preference/ListPreference;)I

    move-result v7

    sub-int v8, v2, v0

    sub-int/2addr v8, v1

    if-gt v7, v8, :cond_0

    goto :goto_0

    .line 211
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string/jumbo v8, "setLayoutMode"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-static {v7}, Lcom/meizu/common/preference/ListPreference;->access$302(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 216
    :catch_0
    move-exception v3

    .line 215
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v5, 0x0

    .line 221
    .local v5, "listHeight":I
    iget-object v7, p0, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v7, :cond_6

    .line 238
    :cond_5
    iget-object v7, p0, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->this$0:Lcom/meizu/common/preference/ListPreference;

    invoke-static {v7}, Lcom/meizu/common/preference/ListPreference;->access$400(Lcom/meizu/common/preference/ListPreference;)I

    move-result v7

    if-le v5, v7, :cond_1

    .line 239
    iget-object v7, p0, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->this$0:Lcom/meizu/common/preference/ListPreference;

    invoke-static {v7}, Lcom/meizu/common/preference/ListPreference;->access$400(Lcom/meizu/common/preference/ListPreference;)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->setHeight(I)V

    goto :goto_3

    .line 221
    :cond_6
    iget-object v7, p0, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-lez v7, :cond_5

    const/4 v6, 0x0

    .line 224
    .local v6, "position":I
    :goto_4
    iget-object v7, p0, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0}, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->getListView()Landroid/widget/ListView;

    move-result-object v8

    invoke-interface {v7, v6, v13, v8}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 226
    .local v4, "itemView":Landroid/view/View;
    if-nez v4, :cond_7

    .line 231
    :goto_5
    add-int/lit8 v6, v6, 0x1

    .line 232
    iget-object v7, p0, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-ge v6, v7, :cond_5

    goto :goto_4

    .line 227
    :cond_7
    invoke-virtual {v4, v12, v12}, Landroid/view/View;->measure(II)V

    .line 229
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v5, v7

    goto :goto_5
.end method
