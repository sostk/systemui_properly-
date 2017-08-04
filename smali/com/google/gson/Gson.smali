.class public final Lcom/google/gson/Gson;
.super Ljava/lang/Object;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/Gson$FutureTypeAdapter;
    }
.end annotation


# static fields
.field private static final NULL_KEY_SURROGATE:Lcom/google/gson/reflect/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/reflect/TypeToken",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final calls:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/google/gson/reflect/TypeToken",
            "<*>;",
            "Lcom/google/gson/Gson$FutureTypeAdapter",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

.field private final excluder:Lcom/google/gson/internal/Excluder;

.field private final factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final fieldNamingStrategy:Lcom/google/gson/FieldNamingStrategy;

.field private final generateNonExecutableJson:Z

.field private final htmlSafe:Z

.field private final jsonAdapterFactory:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

.field private final lenient:Z

.field private final prettyPrinting:Z

.field private final serializeNulls:Z

.field private final typeTokenCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/gson/reflect/TypeToken",
            "<*>;",
            "Lcom/google/gson/TypeAdapter",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lcom/google/gson/Gson$1;

    invoke-direct {v0}, Lcom/google/gson/Gson$1;-><init>()V

    sput-object v0, Lcom/google/gson/Gson;->NULL_KEY_SURROGATE:Lcom/google/gson/reflect/TypeToken;

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    .prologue
    const/4 v4, 0x0

    .line 174
    sget-object v1, Lcom/google/gson/internal/Excluder;->DEFAULT:Lcom/google/gson/internal/Excluder;

    sget-object v2, Lcom/google/gson/FieldNamingPolicy;->IDENTITY:Lcom/google/gson/FieldNamingPolicy;

    .line 175
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    sget-object v11, Lcom/google/gson/LongSerializationPolicy;->DEFAULT:Lcom/google/gson/LongSerializationPolicy;

    .line 178
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    .line 174
    const/4 v7, 0x1

    move-object v0, p0

    move v5, v4

    move v6, v4

    move v8, v4

    move v9, v4

    move v10, v4

    invoke-direct/range {v0 .. v12}, Lcom/google/gson/Gson;-><init>(Lcom/google/gson/internal/Excluder;Lcom/google/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZZLcom/google/gson/LongSerializationPolicy;Ljava/util/List;)V

    .line 179
    return-void
.end method

.method constructor <init>(Lcom/google/gson/internal/Excluder;Lcom/google/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZZLcom/google/gson/LongSerializationPolicy;Ljava/util/List;)V
    .locals 6
    .param p1, "excluder"    # Lcom/google/gson/internal/Excluder;
    .param p2, "fieldNamingStrategy"    # Lcom/google/gson/FieldNamingStrategy;
    .param p4, "serializeNulls"    # Z
    .param p5, "complexMapKeySerialization"    # Z
    .param p6, "generateNonExecutableGson"    # Z
    .param p7, "htmlSafe"    # Z
    .param p8, "prettyPrinting"    # Z
    .param p9, "lenient"    # Z
    .param p10, "serializeSpecialFloatingPointValues"    # Z
    .param p11, "longSerializationPolicy"    # Lcom/google/gson/LongSerializationPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/Excluder;",
            "Lcom/google/gson/FieldNamingStrategy;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/InstanceCreator",
            "<*>;>;ZZZZZZZ",
            "Lcom/google/gson/LongSerializationPolicy;",
            "Ljava/util/List",
            "<",
            "Lcom/google/gson/TypeAdapterFactory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p3, "instanceCreators":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Type;Lcom/google/gson/InstanceCreator<*>;>;"
    .local p12, "typeAdapterFactories":Ljava/util/List;, "Ljava/util/List<Lcom/google/gson/TypeAdapterFactory;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v3, Ljava/lang/ThreadLocal;

    invoke-direct {v3}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v3, p0, Lcom/google/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    .line 125
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Lcom/google/gson/Gson;->typeTokenCache:Ljava/util/Map;

    .line 187
    new-instance v3, Lcom/google/gson/internal/ConstructorConstructor;

    invoke-direct {v3, p3}, Lcom/google/gson/internal/ConstructorConstructor;-><init>(Ljava/util/Map;)V

    iput-object v3, p0, Lcom/google/gson/Gson;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    .line 188
    iput-object p1, p0, Lcom/google/gson/Gson;->excluder:Lcom/google/gson/internal/Excluder;

    .line 189
    iput-object p2, p0, Lcom/google/gson/Gson;->fieldNamingStrategy:Lcom/google/gson/FieldNamingStrategy;

    .line 190
    iput-boolean p4, p0, Lcom/google/gson/Gson;->serializeNulls:Z

    .line 191
    iput-boolean p6, p0, Lcom/google/gson/Gson;->generateNonExecutableJson:Z

    .line 192
    iput-boolean p7, p0, Lcom/google/gson/Gson;->htmlSafe:Z

    .line 193
    iput-boolean p8, p0, Lcom/google/gson/Gson;->prettyPrinting:Z

    .line 194
    iput-boolean p9, p0, Lcom/google/gson/Gson;->lenient:Z

    .line 196
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v1, "factories":Ljava/util/List;, "Ljava/util/List<Lcom/google/gson/TypeAdapterFactory;>;"
    sget-object v3, Lcom/google/gson/internal/bind/TypeAdapters;->JSON_ELEMENT_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    sget-object v3, Lcom/google/gson/internal/bind/ObjectTypeAdapter;->FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    move-object/from16 v0, p12

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 209
    sget-object v3, Lcom/google/gson/internal/bind/TypeAdapters;->STRING_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v3, Lcom/google/gson/internal/bind/TypeAdapters;->INTEGER_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    sget-object v3, Lcom/google/gson/internal/bind/TypeAdapters;->BOOLEAN_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v3, Lcom/google/gson/internal/bind/TypeAdapters;->BYTE_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    sget-object v3, Lcom/google/gson/internal/bind/TypeAdapters;->SHORT_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-static/range {p11 .. p11}, Lcom/google/gson/Gson;->longAdapter(Lcom/google/gson/LongSerializationPolicy;)Lcom/google/gson/TypeAdapter;

    move-result-object v2

    .line 215
    .local v2, "longAdapter":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<Ljava/lang/Number;>;"
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Long;

    invoke-static {v3, v4, v2}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Double;

    .line 217
    move/from16 v0, p10

    invoke-direct {p0, v0}, Lcom/google/gson/Gson;->doubleAdapter(Z)Lcom/google/gson/TypeAdapter;

    move-result-object v5

    .line 216
    invoke-static {v3, v4, v5}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Float;

    .line 219
    move/from16 v0, p10

    invoke-direct {p0, v0}, Lcom/google/gson/Gson;->floatAdapter(Z)Lcom/google/gson/TypeAdapter;

    move-result-object v5

    .line 218
    invoke-static {v3, v4, v5}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    sget-object v3, Lcom/google/gson/internal/bind/TypeAdapters;->NUMBER_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    sget-object v3, Lcom/google/gson/internal/bind/TypeAdapters;->ATOMIC_INTEGER_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    sget-object v3, Lcom/google/gson/internal/bind/TypeAdapters;->ATOMIC_BOOLEAN_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v3, Ljava/util/concurrent/atomic/AtomicLong;

    .line 223
    invoke-static {v2}, Lcom/google/gson/Gson;->atomicLongAdapter(Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapter;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v3, Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 224
    invoke-static {v2}, Lcom/google/gson/Gson;->atomicLongArrayAdapter(Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapter;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    sget-object v3, Lcom/google/gson/internal/bind/TypeAdapters;->ATOMIC_INTEGER_ARRAY_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    sget-object v3, Lcom/google/gson/internal/bind/TypeAdapters;->CHARACTER_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object v3, Lcom/google/gson/internal/bind/TypeAdapters;->STRING_BUILDER_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v3, Lcom/google/gson/internal/bind/TypeAdapters;->STRING_BUFFER_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v3, Ljava/math/BigDecimal;

    .line 229
    sget-object v4, Lcom/google/gson/internal/bind/TypeAdapters;->BIG_DECIMAL:Lcom/google/gson/TypeAdapter;

    invoke-static {v3, v4}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v3, Ljava/math/BigInteger;

    .line 230
    sget-object v4, Lcom/google/gson/internal/bind/TypeAdapters;->BIG_INTEGER:Lcom/google/gson/TypeAdapter;

    invoke-static {v3, v4}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    sget-object v3, Lcom/google/gson/internal/bind/TypeAdapters;->URL_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v3, Lcom/google/gson/internal/bind/TypeAdapters;->URI_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v3, Lcom/google/gson/internal/bind/TypeAdapters;->UUID_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    sget-object v3, Lcom/google/gson/internal/bind/TypeAdapters;->CURRENCY_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object v3, Lcom/google/gson/internal/bind/TypeAdapters;->LOCALE_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    sget-object v3, Lcom/google/gson/internal/bind/TypeAdapters;->INET_ADDRESS_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    sget-object v3, Lcom/google/gson/internal/bind/TypeAdapters;->BIT_SET_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    sget-object v3, Lcom/google/gson/internal/bind/DateTypeAdapter;->FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    sget-object v3, Lcom/google/gson/internal/bind/TypeAdapters;->CALENDAR_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    sget-object v3, Lcom/google/gson/internal/bind/TimeTypeAdapter;->FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    sget-object v3, Lcom/google/gson/internal/bind/SqlDateTypeAdapter;->FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    sget-object v3, Lcom/google/gson/internal/bind/TypeAdapters;->TIMESTAMP_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    sget-object v3, Lcom/google/gson/internal/bind/ArrayTypeAdapter;->FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    sget-object v3, Lcom/google/gson/internal/bind/TypeAdapters;->CLASS_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    new-instance v3, Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory;

    iget-object v4, p0, Lcom/google/gson/Gson;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    invoke-direct {v3, v4}, Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory;-><init>(Lcom/google/gson/internal/ConstructorConstructor;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    new-instance v3, Lcom/google/gson/internal/bind/MapTypeAdapterFactory;

    iget-object v4, p0, Lcom/google/gson/Gson;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    invoke-direct {v3, v4, p5}, Lcom/google/gson/internal/bind/MapTypeAdapterFactory;-><init>(Lcom/google/gson/internal/ConstructorConstructor;Z)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    new-instance v3, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    iget-object v4, p0, Lcom/google/gson/Gson;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    invoke-direct {v3, v4}, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;-><init>(Lcom/google/gson/internal/ConstructorConstructor;)V

    iput-object v3, p0, Lcom/google/gson/Gson;->jsonAdapterFactory:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    .line 250
    iget-object v3, p0, Lcom/google/gson/Gson;->jsonAdapterFactory:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    sget-object v3, Lcom/google/gson/internal/bind/TypeAdapters;->ENUM_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    new-instance v3, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;

    iget-object v4, p0, Lcom/google/gson/Gson;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    iget-object v5, p0, Lcom/google/gson/Gson;->jsonAdapterFactory:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    invoke-direct {v3, v4, p2, p1, v5}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;-><init>(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/FieldNamingStrategy;Lcom/google/gson/internal/Excluder;Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/gson/Gson;->factories:Ljava/util/List;

    .line 256
    return-void
.end method

.method private static assertFullConsumption(Ljava/lang/Object;Lcom/google/gson/stream/JsonReader;)V
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "reader"    # Lcom/google/gson/stream/JsonReader;

    .prologue
    .line 859
    if-nez p0, :cond_1

    .line 867
    :cond_0
    return-void

    .line 859
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    if-eq v2, v3, :cond_0

    .line 860
    new-instance v2, Lcom/google/gson/JsonIOException;

    const-string/jumbo v3, "JSON document was not fully consumed."

    invoke-direct {v2, v3}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lcom/google/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 866
    :catch_0
    move-exception v0

    .line 863
    .local v0, "e":Lcom/google/gson/stream/MalformedJsonException;
    new-instance v2, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v2, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .end local v0    # "e":Lcom/google/gson/stream/MalformedJsonException;
    :catch_1
    move-exception v1

    .line 865
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lcom/google/gson/JsonIOException;

    invoke-direct {v2, v1}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static atomicLongAdapter(Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;)",
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation

    .prologue
    .line 353
    .local p0, "longAdapter":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<Ljava/lang/Number;>;"
    new-instance v0, Lcom/google/gson/Gson$5;

    invoke-direct {v0, p0}, Lcom/google/gson/Gson$5;-><init>(Lcom/google/gson/TypeAdapter;)V

    .line 361
    invoke-virtual {v0}, Lcom/google/gson/Gson$5;->nullSafe()Lcom/google/gson/TypeAdapter;

    move-result-object v0

    return-object v0
.end method

.method private static atomicLongArrayAdapter(Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;)",
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/util/concurrent/atomic/AtomicLongArray;",
            ">;"
        }
    .end annotation

    .prologue
    .line 365
    .local p0, "longAdapter":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<Ljava/lang/Number;>;"
    new-instance v0, Lcom/google/gson/Gson$6;

    invoke-direct {v0, p0}, Lcom/google/gson/Gson$6;-><init>(Lcom/google/gson/TypeAdapter;)V

    .line 388
    invoke-virtual {v0}, Lcom/google/gson/Gson$6;->nullSafe()Lcom/google/gson/TypeAdapter;

    move-result-object v0

    return-object v0
.end method

.method static checkValidFloatingPoint(D)V
    .locals 4
    .param p0, "value"    # D

    .prologue
    .line 323
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a valid double value as per JSON specification. To override this"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    return-void
.end method

.method private doubleAdapter(Z)Lcom/google/gson/TypeAdapter;
    .locals 1
    .param p1, "serializeSpecialFloatingPointValues"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    if-nez p1, :cond_0

    .line 278
    new-instance v0, Lcom/google/gson/Gson$2;

    invoke-direct {v0, p0}, Lcom/google/gson/Gson$2;-><init>(Lcom/google/gson/Gson;)V

    return-object v0

    .line 276
    :cond_0
    sget-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->DOUBLE:Lcom/google/gson/TypeAdapter;

    return-object v0
.end method

.method private floatAdapter(Z)Lcom/google/gson/TypeAdapter;
    .locals 1
    .param p1, "serializeSpecialFloatingPointValues"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 299
    if-nez p1, :cond_0

    .line 302
    new-instance v0, Lcom/google/gson/Gson$3;

    invoke-direct {v0, p0}, Lcom/google/gson/Gson$3;-><init>(Lcom/google/gson/Gson;)V

    return-object v0

    .line 300
    :cond_0
    sget-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->FLOAT:Lcom/google/gson/TypeAdapter;

    return-object v0
.end method

.method private static longAdapter(Lcom/google/gson/LongSerializationPolicy;)Lcom/google/gson/TypeAdapter;
    .locals 1
    .param p0, "longSerializationPolicy"    # Lcom/google/gson/LongSerializationPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/LongSerializationPolicy;",
            ")",
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    sget-object v0, Lcom/google/gson/LongSerializationPolicy;->DEFAULT:Lcom/google/gson/LongSerializationPolicy;

    if-eq p0, v0, :cond_0

    .line 334
    new-instance v0, Lcom/google/gson/Gson$4;

    invoke-direct {v0}, Lcom/google/gson/Gson$4;-><init>()V

    return-object v0

    .line 332
    :cond_0
    sget-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->LONG:Lcom/google/gson/TypeAdapter;

    return-object v0
.end method


# virtual methods
.method public fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 9
    .param p1, "reader"    # Lcom/google/gson/stream/JsonReader;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/stream/JsonReader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonIOException;,
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 879
    const/4 v3, 0x1

    .line 880
    .local v3, "isEmpty":Z
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->isLenient()Z

    move-result v5

    .line 881
    .local v5, "oldLenient":Z
    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Lcom/google/gson/stream/JsonReader;->setLenient(Z)V

    .line 883
    :try_start_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 884
    const/4 v3, 0x0

    .line 885
    invoke-static {p2}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v7

    .line 886
    .local v7, "typeToken":Lcom/google/gson/reflect/TypeToken;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p0, v7}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v6

    .line 887
    .local v6, "typeAdapter":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<TT;>;"
    invoke-virtual {v6, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 904
    .local v4, "object":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1, v5}, Lcom/google/gson/stream/JsonReader;->setLenient(Z)V

    return-object v4

    .end local v4    # "object":Ljava/lang/Object;, "TT;"
    .end local v6    # "typeAdapter":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<TT;>;"
    .end local v7    # "typeToken":Lcom/google/gson/reflect/TypeToken;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    :catch_0
    move-exception v0

    .line 894
    .local v0, "e":Ljava/io/EOFException;
    if-nez v3, :cond_0

    .line 897
    :try_start_1
    new-instance v8, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v8, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 902
    .end local v0    # "e":Ljava/io/EOFException;
    :catchall_0
    move-exception v8

    .line 904
    invoke-virtual {p1, v5}, Lcom/google/gson/stream/JsonReader;->setLenient(Z)V

    throw v8

    .restart local v0    # "e":Ljava/io/EOFException;
    :cond_0
    invoke-virtual {p1, v5}, Lcom/google/gson/stream/JsonReader;->setLenient(Z)V

    const/4 v8, 0x0

    return-object v8

    .line 897
    .end local v0    # "e":Ljava/io/EOFException;
    :catch_1
    move-exception v2

    .line 899
    .local v2, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    new-instance v8, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v8, v2}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v1

    .line 902
    .local v1, "e":Ljava/io/IOException;
    new-instance v8, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v8, v1}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .param p1, "json"    # Ljava/io/Reader;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonIOException;,
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 851
    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->newJsonReader(Ljava/io/Reader;)Lcom/google/gson/stream/JsonReader;

    move-result-object v0

    .line 852
    .local v0, "jsonReader":Lcom/google/gson/stream/JsonReader;
    invoke-virtual {p0, v0, p2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 853
    .local v1, "object":Ljava/lang/Object;, "TT;"
    invoke-static {v1, v0}, Lcom/google/gson/Gson;->assertFullConsumption(Ljava/lang/Object;Lcom/google/gson/stream/JsonReader;)V

    .line 854
    return-object v1
.end method

.method public fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 773
    .local p2, "classOfT":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 774
    .local v0, "object":Ljava/lang/Object;
    invoke-static {p2}, Lcom/google/gson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .param p1, "json"    # Ljava/lang/String;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 797
    if-eqz p1, :cond_0

    .line 800
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 801
    .local v0, "reader":Ljava/io/StringReader;
    invoke-virtual {p0, v0, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 802
    .local v1, "target":Ljava/lang/Object;, "TT;"
    return-object v1

    .line 798
    .end local v0    # "reader":Ljava/io/StringReader;
    .end local v1    # "target":Ljava/lang/Object;, "TT;"
    :cond_0
    return-object v2
.end method

.method public getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 399
    .local p1, "type":Lcom/google/gson/reflect/TypeToken;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    iget-object v8, p0, Lcom/google/gson/Gson;->typeTokenCache:Ljava/util/Map;

    if-eqz p1, :cond_1

    move-object v7, p1

    :goto_0
    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/TypeAdapter;

    .line 400
    .local v0, "cached":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<*>;"
    if-nez v0, :cond_2

    .line 404
    iget-object v7, p0, Lcom/google/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 405
    .local v6, "threadCalls":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/gson/reflect/TypeToken<*>;Lcom/google/gson/Gson$FutureTypeAdapter<*>;>;"
    const/4 v5, 0x0

    .line 406
    .local v5, "requiresThreadLocalCleanup":Z
    if-eqz v6, :cond_3

    .line 413
    :goto_1
    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/Gson$FutureTypeAdapter;

    .line 414
    .local v4, "ongoingCall":Lcom/google/gson/Gson$FutureTypeAdapter;, "Lcom/google/gson/Gson$FutureTypeAdapter<TT;>;"
    if-nez v4, :cond_4

    .line 419
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson$FutureTypeAdapter;

    invoke-direct {v1}, Lcom/google/gson/Gson$FutureTypeAdapter;-><init>()V

    .line 420
    .local v1, "call":Lcom/google/gson/Gson$FutureTypeAdapter;, "Lcom/google/gson/Gson$FutureTypeAdapter<TT;>;"
    invoke-interface {v6, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    iget-object v7, p0, Lcom/google/gson/Gson;->factories:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_5

    .line 430
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "GSON cannot handle "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "call":Lcom/google/gson/Gson$FutureTypeAdapter;, "Lcom/google/gson/Gson$FutureTypeAdapter<TT;>;"
    :catchall_0
    move-exception v7

    .line 432
    invoke-interface {v6, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    if-nez v5, :cond_7

    .line 435
    :goto_2
    throw v7

    .line 399
    .end local v0    # "cached":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<*>;"
    .end local v4    # "ongoingCall":Lcom/google/gson/Gson$FutureTypeAdapter;, "Lcom/google/gson/Gson$FutureTypeAdapter<TT;>;"
    .end local v5    # "requiresThreadLocalCleanup":Z
    .end local v6    # "threadCalls":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/gson/reflect/TypeToken<*>;Lcom/google/gson/Gson$FutureTypeAdapter<*>;>;"
    :cond_1
    sget-object v7, Lcom/google/gson/Gson;->NULL_KEY_SURROGATE:Lcom/google/gson/reflect/TypeToken;

    goto :goto_0

    .line 401
    .restart local v0    # "cached":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<*>;"
    :cond_2
    return-object v0

    .line 407
    .restart local v5    # "requiresThreadLocalCleanup":Z
    .restart local v6    # "threadCalls":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/gson/reflect/TypeToken<*>;Lcom/google/gson/Gson$FutureTypeAdapter<*>;>;"
    :cond_3
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "threadCalls":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/gson/reflect/TypeToken<*>;Lcom/google/gson/Gson$FutureTypeAdapter<*>;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 408
    .restart local v6    # "threadCalls":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/gson/reflect/TypeToken<*>;Lcom/google/gson/Gson$FutureTypeAdapter<*>;>;"
    iget-object v7, p0, Lcom/google/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v7, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 409
    const/4 v5, 0x1

    goto :goto_1

    .line 415
    .restart local v4    # "ongoingCall":Lcom/google/gson/Gson$FutureTypeAdapter;, "Lcom/google/gson/Gson$FutureTypeAdapter<TT;>;"
    :cond_4
    return-object v4

    .line 422
    .restart local v1    # "call":Lcom/google/gson/Gson$FutureTypeAdapter;, "Lcom/google/gson/Gson$FutureTypeAdapter<TT;>;"
    :cond_5
    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/TypeAdapterFactory;

    .line 423
    .local v3, "factory":Lcom/google/gson/TypeAdapterFactory;
    invoke-interface {v3, p0, p1}, Lcom/google/gson/TypeAdapterFactory;->create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v2

    .line 424
    .local v2, "candidate":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<TT;>;"
    if-eqz v2, :cond_0

    .line 425
    invoke-virtual {v1, v2}, Lcom/google/gson/Gson$FutureTypeAdapter;->setDelegate(Lcom/google/gson/TypeAdapter;)V

    .line 426
    iget-object v7, p0, Lcom/google/gson/Gson;->typeTokenCache:Ljava/util/Map;

    invoke-interface {v7, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 432
    invoke-interface {v6, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    if-nez v5, :cond_6

    .line 435
    :goto_3
    return-object v2

    :cond_6
    iget-object v7, p0, Lcom/google/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_3

    .end local v1    # "call":Lcom/google/gson/Gson$FutureTypeAdapter;, "Lcom/google/gson/Gson$FutureTypeAdapter<TT;>;"
    .end local v2    # "candidate":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<TT;>;"
    .end local v3    # "factory":Lcom/google/gson/TypeAdapterFactory;
    :cond_7
    iget-object v8, p0, Lcom/google/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_2
.end method

.method public getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 521
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getDelegateAdapter(Lcom/google/gson/TypeAdapterFactory;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .locals 6
    .param p1, "skipPast"    # Lcom/google/gson/TypeAdapterFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/TypeAdapterFactory;",
            "Lcom/google/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 493
    .local p2, "type":Lcom/google/gson/reflect/TypeToken;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    iget-object v3, p0, Lcom/google/gson/Gson;->factories:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 497
    :goto_0
    const/4 v2, 0x0

    .line 498
    .local v2, "skipPastFound":Z
    iget-object v3, p0, Lcom/google/gson/Gson;->factories:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 511
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "GSON cannot serialize "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 494
    .end local v2    # "skipPastFound":Z
    :cond_1
    iget-object p1, p0, Lcom/google/gson/Gson;->jsonAdapterFactory:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    goto :goto_0

    .line 498
    .restart local v2    # "skipPastFound":Z
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/TypeAdapterFactory;

    .line 499
    .local v1, "factory":Lcom/google/gson/TypeAdapterFactory;
    if-eqz v2, :cond_3

    .line 506
    invoke-interface {v1, p0, p2}, Lcom/google/gson/TypeAdapterFactory;->create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    .line 507
    .local v0, "candidate":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<TT;>;"
    if-eqz v0, :cond_0

    .line 508
    return-object v0

    .line 500
    .end local v0    # "candidate":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<TT;>;"
    :cond_3
    if-ne v1, p1, :cond_0

    .line 501
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public newJsonReader(Ljava/io/Reader;)Lcom/google/gson/stream/JsonReader;
    .locals 2
    .param p1, "reader"    # Ljava/io/Reader;

    .prologue
    .line 728
    new-instance v0, Lcom/google/gson/stream/JsonReader;

    invoke-direct {v0, p1}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 729
    .local v0, "jsonReader":Lcom/google/gson/stream/JsonReader;
    iget-boolean v1, p0, Lcom/google/gson/Gson;->lenient:Z

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonReader;->setLenient(Z)V

    .line 730
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 982
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/gson/Gson;->serializeNulls:Z

    .line 983
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "factories:"

    .line 984
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gson/Gson;->factories:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",instanceCreators:"

    .line 985
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gson/Gson;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    .line 986
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 987
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
