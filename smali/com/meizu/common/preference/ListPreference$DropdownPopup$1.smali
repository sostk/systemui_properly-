.class Lcom/meizu/common/preference/ListPreference$DropdownPopup$1;
.super Ljava/lang/Object;
.source "ListPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/preference/ListPreference$DropdownPopup;-><init>(Lcom/meizu/common/preference/ListPreference;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/common/preference/ListPreference$DropdownPopup;

.field final synthetic val$this$0:Lcom/meizu/common/preference/ListPreference;


# direct methods
.method constructor <init>(Lcom/meizu/common/preference/ListPreference$DropdownPopup;Lcom/meizu/common/preference/ListPreference;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/meizu/common/preference/ListPreference$DropdownPopup$1;->this$1:Lcom/meizu/common/preference/ListPreference$DropdownPopup;

    iput-object p2, p0, Lcom/meizu/common/preference/ListPreference$DropdownPopup$1;->val$this$0:Lcom/meizu/common/preference/ListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 180
    iget-object v0, p0, Lcom/meizu/common/preference/ListPreference$DropdownPopup$1;->this$1:Lcom/meizu/common/preference/ListPreference$DropdownPopup;

    iget-object v0, v0, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->this$0:Lcom/meizu/common/preference/ListPreference;

    invoke-static {v0, p3}, Lcom/meizu/common/preference/ListPreference;->access$002(Lcom/meizu/common/preference/ListPreference;I)I

    .line 181
    iget-object v0, p0, Lcom/meizu/common/preference/ListPreference$DropdownPopup$1;->this$1:Lcom/meizu/common/preference/ListPreference$DropdownPopup;

    iget-object v1, p0, Lcom/meizu/common/preference/ListPreference$DropdownPopup$1;->this$1:Lcom/meizu/common/preference/ListPreference$DropdownPopup;

    iget-object v1, v1, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->this$0:Lcom/meizu/common/preference/ListPreference;

    invoke-static {v1}, Lcom/meizu/common/preference/ListPreference;->access$000(Lcom/meizu/common/preference/ListPreference;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->setSelection(I)V

    .line 182
    iget-object v0, p0, Lcom/meizu/common/preference/ListPreference$DropdownPopup$1;->this$1:Lcom/meizu/common/preference/ListPreference$DropdownPopup;

    invoke-virtual {v0}, Lcom/meizu/common/preference/ListPreference$DropdownPopup;->dismiss()V

    .line 183
    return-void
.end method
