.class Lcom/meizu/common/preference/SwitchPreference$Listener;
.super Ljava/lang/Object;
.source "SwitchPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/preference/SwitchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/preference/SwitchPreference;


# direct methods
.method private constructor <init>(Lcom/meizu/common/preference/SwitchPreference;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/meizu/common/preference/SwitchPreference$Listener;->this$0:Lcom/meizu/common/preference/SwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/common/preference/SwitchPreference;Lcom/meizu/common/preference/SwitchPreference$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/meizu/common/preference/SwitchPreference;
    .param p2, "x1"    # Lcom/meizu/common/preference/SwitchPreference$1;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/meizu/common/preference/SwitchPreference$Listener;-><init>(Lcom/meizu/common/preference/SwitchPreference;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v0, 0x0

    .line 56
    iget-object v1, p0, Lcom/meizu/common/preference/SwitchPreference$Listener;->this$0:Lcom/meizu/common/preference/SwitchPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/common/preference/SwitchPreference;->access$100(Lcom/meizu/common/preference/SwitchPreference;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/meizu/common/preference/SwitchPreference$Listener;->this$0:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, p2}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 67
    iget-object v0, p0, Lcom/meizu/common/preference/SwitchPreference$Listener;->this$0:Lcom/meizu/common/preference/SwitchPreference;

    invoke-static {v0}, Lcom/meizu/common/preference/SwitchPreference;->access$200(Lcom/meizu/common/preference/SwitchPreference;)V

    .line 68
    return-void

    .line 59
    :cond_0
    if-eqz p2, :cond_1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 60
    return-void

    :cond_1
    const/4 v0, 0x1

    .line 59
    goto :goto_0
.end method
