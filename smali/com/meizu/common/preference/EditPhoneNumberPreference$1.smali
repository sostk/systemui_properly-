.class Lcom/meizu/common/preference/EditPhoneNumberPreference$1;
.super Ljava/lang/Object;
.source "EditPhoneNumberPreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/preference/EditPhoneNumberPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/preference/EditPhoneNumberPreference;


# direct methods
.method constructor <init>(Lcom/meizu/common/preference/EditPhoneNumberPreference;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference$1;->this$0:Lcom/meizu/common/preference/EditPhoneNumberPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private enableButton(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const/4 v3, -0x1

    .line 284
    iget-object v1, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference$1;->this$0:Lcom/meizu/common/preference/EditPhoneNumberPreference;

    invoke-virtual {v1}, Lcom/meizu/common/preference/EditPhoneNumberPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 285
    .local v0, "dialog":Landroid/app/AlertDialog;
    if-nez v0, :cond_0

    .line 298
    :goto_0
    return-void

    .line 286
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference$1;->this$0:Lcom/meizu/common/preference/EditPhoneNumberPreference;

    invoke-static {v1}, Lcom/meizu/common/preference/EditPhoneNumberPreference;->access$000(Lcom/meizu/common/preference/EditPhoneNumberPreference;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 294
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 287
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference$1;->this$0:Lcom/meizu/common/preference/EditPhoneNumberPreference;

    invoke-static {v1}, Lcom/meizu/common/preference/EditPhoneNumberPreference;->access$100(Lcom/meizu/common/preference/EditPhoneNumberPreference;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, -0x3

    .line 290
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 288
    :cond_2
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 267
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 272
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v1, 0x0

    .line 277
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/meizu/common/preference/EditPhoneNumberPreference$1;->enableButton(Z)V

    .line 282
    :goto_0
    return-void

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/preference/EditPhoneNumberPreference$1;->this$0:Lcom/meizu/common/preference/EditPhoneNumberPreference;

    invoke-virtual {v0}, Lcom/meizu/common/preference/EditPhoneNumberPreference;->isEmptyAllow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    invoke-direct {p0, v1}, Lcom/meizu/common/preference/EditPhoneNumberPreference$1;->enableButton(Z)V

    goto :goto_0
.end method
