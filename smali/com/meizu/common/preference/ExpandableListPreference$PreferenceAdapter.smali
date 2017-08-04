.class Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;
.super Landroid/widget/BaseAdapter;
.source "ExpandableListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/preference/ExpandableListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreferenceAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter$Holder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:[Ljava/lang/CharSequence;

.field private mList:Landroid/widget/ListView;

.field private mSelectedPosition:I

.field final synthetic this$0:Lcom/meizu/common/preference/ExpandableListPreference;


# direct methods
.method public constructor <init>(Lcom/meizu/common/preference/ExpandableListPreference;Landroid/content/Context;[Ljava/lang/CharSequence;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "data"    # [Ljava/lang/CharSequence;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;->this$0:Lcom/meizu/common/preference/ExpandableListPreference;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    .line 218
    iput v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;->mSelectedPosition:I

    .line 222
    iput-object p2, p0, Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;->mContext:Landroid/content/Context;

    .line 223
    iput-object p3, p0, Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;->mData:[Ljava/lang/CharSequence;

    .line 224
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;->mData:[Ljava/lang/CharSequence;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 235
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;->mData:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 241
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 247
    .local v0, "holder":Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter$Holder;
    if-eqz p2, :cond_0

    .line 259
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter$Holder;
    check-cast v0, Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter$Holder;

    .line 261
    .local v0, "holder":Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter$Holder;
    :goto_0
    iget-object v3, v0, Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter$Holder;->checkedTextView:Landroid/widget/CheckedTextView;

    iget-object v4, p0, Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;->mData:[Ljava/lang/CharSequence;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget v3, p0, Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;->mSelectedPosition:I

    if-eq p1, v3, :cond_1

    .line 265
    :goto_1
    return-object p2

    .line 248
    .local v0, "holder":Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter$Holder;
    :cond_0
    new-instance v0, Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter$Holder;

    .end local v0    # "holder":Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter$Holder;
    invoke-direct {v0, p0, v5}, Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter$Holder;-><init>(Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;Lcom/meizu/common/preference/ExpandableListPreference$1;)V

    .line 249
    .local v0, "holder":Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter$Holder;
    iget-object v3, p0, Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 251
    .local v1, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lcom/meizu/common/R$layout;->mc_expandable_preference_list_item:I

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    move-object v3, p2

    .line 252
    check-cast v3, Landroid/widget/CheckedTextView;

    iput-object v3, v0, Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter$Holder;->checkedTextView:Landroid/widget/CheckedTextView;

    .line 253
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/meizu/common/R$dimen;->mc_expandable_preference_list_item_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 256
    .local v2, "lp":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {p2, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 263
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    iget-object v3, p0, Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;->mList:Landroid/widget/ListView;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_1
.end method

.method public setSelectedPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 273
    iput p1, p0, Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;->mSelectedPosition:I

    .line 274
    return-void
.end method

.method public setTargetList(Landroid/widget/ListView;)V
    .locals 0
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/meizu/common/preference/ExpandableListPreference$PreferenceAdapter;->mList:Landroid/widget/ListView;

    .line 278
    return-void
.end method
