.class Lorg/flerovium/settings/inputmethod/InputMethodAndLanguageSettings$2;
.super Ljava/lang/Object;
.source "InputMethodAndLanguageSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/inputmethod/InputMethodAndLanguageSettings;->updateInputMethodPreferenceViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/flerovium/settings/inputmethod/InputMethodPreference;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/inputmethod/InputMethodAndLanguageSettings;

.field final synthetic val$collator:Ljava/text/Collator;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/inputmethod/InputMethodAndLanguageSettings;Ljava/text/Collator;)V
    .locals 0

    .prologue
    .line 532
    iput-object p1, p0, Lorg/flerovium/settings/inputmethod/InputMethodAndLanguageSettings$2;->this$0:Lorg/flerovium/settings/inputmethod/InputMethodAndLanguageSettings;

    iput-object p2, p0, Lorg/flerovium/settings/inputmethod/InputMethodAndLanguageSettings$2;->val$collator:Ljava/text/Collator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lorg/flerovium/settings/inputmethod/InputMethodPreference;Lorg/flerovium/settings/inputmethod/InputMethodPreference;)I
    .locals 1
    .param p1, "lhs"    # Lorg/flerovium/settings/inputmethod/InputMethodPreference;
    .param p2, "rhs"    # Lorg/flerovium/settings/inputmethod/InputMethodPreference;

    .prologue
    .line 535
    iget-object v0, p0, Lorg/flerovium/settings/inputmethod/InputMethodAndLanguageSettings$2;->val$collator:Ljava/text/Collator;

    invoke-virtual {p1, p2, v0}, Lorg/flerovium/settings/inputmethod/InputMethodPreference;->compareTo(Lorg/flerovium/settings/inputmethod/InputMethodPreference;Ljava/text/Collator;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 532
    check-cast p1, Lorg/flerovium/settings/inputmethod/InputMethodPreference;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/flerovium/settings/inputmethod/InputMethodPreference;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/flerovium/settings/inputmethod/InputMethodAndLanguageSettings$2;->compare(Lorg/flerovium/settings/inputmethod/InputMethodPreference;Lorg/flerovium/settings/inputmethod/InputMethodPreference;)I

    move-result v0

    return v0
.end method
