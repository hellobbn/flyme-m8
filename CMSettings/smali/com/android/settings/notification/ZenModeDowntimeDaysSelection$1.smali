.class Lorg/flerovium/settings/notification/ZenModeDowntimeDaysSelection$1;
.super Ljava/lang/Object;
.source "ZenModeDowntimeDaysSelection.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/notification/ZenModeDowntimeDaysSelection;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/notification/ZenModeDowntimeDaysSelection;

.field final synthetic val$day:I


# direct methods
.method constructor <init>(Lorg/flerovium/settings/notification/ZenModeDowntimeDaysSelection;I)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lorg/flerovium/settings/notification/ZenModeDowntimeDaysSelection$1;->this$0:Lorg/flerovium/settings/notification/ZenModeDowntimeDaysSelection;

    iput p2, p0, Lorg/flerovium/settings/notification/ZenModeDowntimeDaysSelection$1;->val$day:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 69
    iget-object v0, p0, Lorg/flerovium/settings/notification/ZenModeDowntimeDaysSelection$1;->this$0:Lorg/flerovium/settings/notification/ZenModeDowntimeDaysSelection;

    # getter for: Lorg/flerovium/settings/notification/ZenModeDowntimeDaysSelection;->mDays:Landroid/util/SparseBooleanArray;
    invoke-static {v0}, Lorg/flerovium/settings/notification/ZenModeDowntimeDaysSelection;->access$000(Lorg/flerovium/settings/notification/ZenModeDowntimeDaysSelection;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    iget v1, p0, Lorg/flerovium/settings/notification/ZenModeDowntimeDaysSelection$1;->val$day:I

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 70
    iget-object v0, p0, Lorg/flerovium/settings/notification/ZenModeDowntimeDaysSelection$1;->this$0:Lorg/flerovium/settings/notification/ZenModeDowntimeDaysSelection;

    iget-object v1, p0, Lorg/flerovium/settings/notification/ZenModeDowntimeDaysSelection$1;->this$0:Lorg/flerovium/settings/notification/ZenModeDowntimeDaysSelection;

    # invokes: Lorg/flerovium/settings/notification/ZenModeDowntimeDaysSelection;->getMode()Ljava/lang/String;
    invoke-static {v1}, Lorg/flerovium/settings/notification/ZenModeDowntimeDaysSelection;->access$100(Lorg/flerovium/settings/notification/ZenModeDowntimeDaysSelection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/flerovium/settings/notification/ZenModeDowntimeDaysSelection;->onChanged(Ljava/lang/String;)V

    .line 71
    return-void
.end method
