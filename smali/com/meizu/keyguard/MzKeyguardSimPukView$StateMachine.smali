.class Lcom/meizu/keyguard/MzKeyguardSimPukView$StateMachine;
.super Ljava/lang/Object;
.source "MzKeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/keyguard/MzKeyguardSimPukView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateMachine"
.end annotation


# instance fields
.field final CONFIRM_PIN:I

.field final DONE:I

.field final ENTER_PIN:I

.field final ENTER_PUK:I

.field private state:I

.field final synthetic this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;


# direct methods
.method private constructor <init>(Lcom/meizu/keyguard/MzKeyguardSimPukView;)V
    .locals 2
    .param p1, "this$0"    # Lcom/meizu/keyguard/MzKeyguardSimPukView;

    .prologue
    const/4 v1, 0x0

    .line 96
    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$StateMachine;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$StateMachine;->ENTER_PUK:I

    .line 98
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$StateMachine;->ENTER_PIN:I

    .line 99
    const/4 v0, 0x2

    iput v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$StateMachine;->CONFIRM_PIN:I

    .line 100
    const/4 v0, 0x3

    iput v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$StateMachine;->DONE:I

    .line 101
    iput v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$StateMachine;->state:I

    .line 96
    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/keyguard/MzKeyguardSimPukView;Lcom/meizu/keyguard/MzKeyguardSimPukView$StateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/keyguard/MzKeyguardSimPukView;

    .prologue
    invoke-direct {p0, p1}, Lcom/meizu/keyguard/MzKeyguardSimPukView$StateMachine;-><init>(Lcom/meizu/keyguard/MzKeyguardSimPukView;)V

    return-void
.end method


# virtual methods
.method public next()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, "msg":I
    iget v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$StateMachine;->state:I

    if-nez v1, :cond_3

    .line 107
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$StateMachine;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    invoke-static {v1}, Lcom/meizu/keyguard/MzKeyguardSimPukView;->-wrap1(Lcom/meizu/keyguard/MzKeyguardSimPukView;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 108
    iput v3, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$StateMachine;->state:I

    .line 109
    sget v0, Lcom/android/keyguard/R$string;->enter_new_pin_tips:I

    .line 131
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$StateMachine;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    invoke-virtual {v1, v3}, Lcom/meizu/keyguard/MzKeyguardSimPukView;->resetPasswordText(Z)V

    .line 132
    if-eqz v0, :cond_1

    .line 133
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$StateMachine;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    iget-object v1, v1, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v1, v0, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 103
    :cond_1
    return-void

    .line 111
    :cond_2
    sget v0, Lcom/android/keyguard/R$string;->mz_kg_invalid_sim_puk_hint:I

    goto :goto_0

    .line 114
    :cond_3
    iget v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$StateMachine;->state:I

    if-ne v1, v3, :cond_5

    .line 115
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$StateMachine;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    invoke-static {v1}, Lcom/meizu/keyguard/MzKeyguardSimPukView;->-wrap0(Lcom/meizu/keyguard/MzKeyguardSimPukView;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 116
    iput v2, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$StateMachine;->state:I

    .line 117
    sget v0, Lcom/android/keyguard/R$string;->confirm_new_pin_tips:I

    goto :goto_0

    .line 119
    :cond_4
    sget v0, Lcom/android/keyguard/R$string;->mz_keyguard_code_length_prompt:I

    goto :goto_0

    .line 121
    :cond_5
    iget v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$StateMachine;->state:I

    if-ne v1, v2, :cond_0

    .line 122
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$StateMachine;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    invoke-virtual {v1}, Lcom/meizu/keyguard/MzKeyguardSimPukView;->confirmPin()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 123
    const/4 v1, 0x3

    iput v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$StateMachine;->state:I

    .line 124
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$StateMachine;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    iget-object v1, v1, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const-string/jumbo v2, ""

    invoke-interface {v1, v2, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 125
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$StateMachine;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    invoke-static {v1}, Lcom/meizu/keyguard/MzKeyguardSimPukView;->-wrap4(Lcom/meizu/keyguard/MzKeyguardSimPukView;)V

    goto :goto_0

    .line 127
    :cond_6
    iput v3, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$StateMachine;->state:I

    .line 128
    sget v0, Lcom/android/keyguard/R$string;->dont_match_enter_new_pin:I

    goto :goto_0
.end method

.method reset()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 138
    iget-object v9, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$StateMachine;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    const-string/jumbo v10, ""

    invoke-static {v9, v10}, Lcom/meizu/keyguard/MzKeyguardSimPukView;->-set1(Lcom/meizu/keyguard/MzKeyguardSimPukView;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    iget-object v9, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$StateMachine;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    const-string/jumbo v10, ""

    invoke-static {v9, v10}, Lcom/meizu/keyguard/MzKeyguardSimPukView;->-set2(Lcom/meizu/keyguard/MzKeyguardSimPukView;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    iput v13, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$StateMachine;->state:I

    .line 142
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    .line 143
    .local v1, "count":I
    const/4 v0, 0x0

    .line 144
    .local v0, "absentSimCount":I
    const-string/jumbo v4, ""

    .line 145
    .local v4, "msg":Ljava/lang/String;
    iget-object v9, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$StateMachine;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    invoke-virtual {v9}, Lcom/meizu/keyguard/MzKeyguardSimPukView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 146
    .local v5, "rez":Landroid/content/res/Resources;
    iget-object v9, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$StateMachine;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    invoke-static {v9}, Lcom/meizu/keyguard/MzKeyguardSimPukView;->-get0(Lcom/meizu/keyguard/MzKeyguardSimPukView;)Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 147
    .local v8, "telephonymanager":Landroid/telephony/TelephonyManager;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 148
    invoke-virtual {v8, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v6

    .line 149
    .local v6, "sState":I
    const-string/jumbo v9, "MzKeyguardSimPukView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "simstate:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    if-ne v6, v12, :cond_0

    .line 151
    add-int/lit8 v0, v0, 0x1

    .line 147
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 154
    .end local v6    # "sState":I
    :cond_1
    iget-object v9, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$StateMachine;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    invoke-static {v9}, Lcom/meizu/keyguard/MzKeyguardSimPukView;->-get0(Lcom/meizu/keyguard/MzKeyguardSimPukView;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    .line 155
    .local v3, "monitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    iget-object v9, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$StateMachine;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    sget-object v10, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v3, v10}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I

    move-result v10

    invoke-static {v9, v10}, Lcom/meizu/keyguard/MzKeyguardSimPukView;->-set3(Lcom/meizu/keyguard/MzKeyguardSimPukView;I)I

    .line 156
    if-ne v0, v12, :cond_3

    .line 157
    iget-object v9, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$StateMachine;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    invoke-static {v9}, Lcom/meizu/keyguard/MzKeyguardSimPukView;->-get3(Lcom/meizu/keyguard/MzKeyguardSimPukView;)I

    move-result v9

    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 158
    sget v9, Lcom/android/keyguard/R$string;->enter_puk_tips:I

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 166
    :cond_2
    :goto_1
    iget-object v9, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$StateMachine;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    iget-object v9, v9, Lcom/meizu/keyguard/MzKeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v9, v4, v12}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 137
    return-void

    .line 161
    :cond_3
    iget-object v9, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$StateMachine;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    invoke-static {v9}, Lcom/meizu/keyguard/MzKeyguardSimPukView;->-get3(Lcom/meizu/keyguard/MzKeyguardSimPukView;)I

    move-result v9

    invoke-virtual {v3, v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSlotId(I)I

    move-result v7

    .line 162
    .local v7, "slotId":I
    iget-object v9, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$StateMachine;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    invoke-static {v9}, Lcom/meizu/keyguard/MzKeyguardSimPukView;->-get3(Lcom/meizu/keyguard/MzKeyguardSimPukView;)I

    move-result v9

    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 163
    iget-object v9, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$StateMachine;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    invoke-static {v9}, Lcom/meizu/keyguard/MzKeyguardSimPukView;->-get0(Lcom/meizu/keyguard/MzKeyguardSimPukView;)Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/android/keyguard/R$string;->gemini_enter_puk:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v12, [Ljava/lang/Object;

    add-int/lit8 v11, v7, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method resetPukState()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$StateMachine;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/meizu/keyguard/MzKeyguardSimPukView;->-set1(Lcom/meizu/keyguard/MzKeyguardSimPukView;Ljava/lang/String;)Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$StateMachine;->this$0:Lcom/meizu/keyguard/MzKeyguardSimPukView;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/meizu/keyguard/MzKeyguardSimPukView;->-set2(Lcom/meizu/keyguard/MzKeyguardSimPukView;Ljava/lang/String;)Ljava/lang/String;

    .line 172
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/keyguard/MzKeyguardSimPukView$StateMachine;->state:I

    .line 169
    return-void
.end method
