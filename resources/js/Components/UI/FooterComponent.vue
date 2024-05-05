<template>
    <div class="footer pb-32 md:pb-5 mt-5 footer-color p-4 md:p-8 text-center">

        <!-- provedores -->
        <div class="md:w-4/6 2xl:w-4/6 m-auto"> <!-- Adicionando a classe m-auto para centralizar horizontalmente -->
            <div class="text-center mt-5 flex items-center justify-center flex-wrap">
                <div v-for="icon in icons" :key="icon.id" class="mr-4 mb-4">
                    <img :src="icon.src" :alt="icon.alt" :style="{ width: icon.width }" />
                </div>
            </div>
        </div>

        <br>
        <br>

        <!-- Footer Links -->
        <div class="md:w-4/6 2xl:w-4/6 mx-auto p-4 grid grid-cols-2 md:grid-cols-4 gap-4 justify-center items-center">
            <div v-for="column in columns" :key="column.id" class="footer-list">
                <h3 class="text-base md:text-lg text-gray-600 dark:text-white font-bold">
                    <i :class="column.icon"></i> {{ column.title }}
                </h3>
                <ul class="list-none mt-5">
                    <li v-for="link in column.links" :key="link.id"
                        class="transition duration-700 hover:dark:text-white text-gray-600 dark:text-gray-400 hover:text-gray-800 text-[12px]">
                        <a :href="link.url">{{ link.label }}</a>
                    </li>
                </ul>
            </div>
        </div>

        <div class="mt-16"></div>

        <!-- Logo-->
        <div class="flex justify-center items-center h-full">
            <a v-if="setting" href="/"> <!-- Adicionando a classe items-center para centralizar verticalmente -->
                <img :src="`/storage/` + setting.software_logo_black" alt="" class="h-10 mr-3 block dark:hidden" />
                <img :src="`/storage/` + setting.software_logo_white" alt="" class="h-10 mr-3 hidden dark:block" />
            </a>
        </div>

        <!-- Descricao -->
        <div class="flex justify-center items-center h-full">
            <div class="mr-5 text-center">
                {{ setting.software_description }}
            </div>
        </div>

        <!-- whats, insta, tema, idioma -->
        <div v-if="setting">
            <div class="flex mt-5">
                <!-- Ícones à esquerda -->
                <div class="flex items-center"> <!-- Div para os ícones à esquerda -->
                    <div class="flex pl-2 mr-4"> <!-- Ícone do Instagram -->
                        <a href="" class="text-3xl text-gray-400">
                            <i class="fa-brands fa-instagram"></i>
                        </a>
                    </div>
                    <div class="flex pl-2"> <!-- Ícone do Whatsapp -->
                        <a href="" class="text-3xl text-gray-400">
                            <i class="fa-brands fa-whatsapp"></i>
                        </a>
                    </div>
                </div>
                <div style="flex: 1;"></div> <!-- Espaço flexível -->
                <!-- Elementos à direita -->
                <div class="flex items-center">
                    <div>
                        <LanguageSelector />
                    </div>
                    <!-- <div>
                        <DropdownDarkLight />
                    </div> -->
                </div>
            </div>
        </div>

        <!-- Linha de divisao -->
        <hr class="border-t border-gray-200 dark:border-gray-600 mt-5">

        <!-- Direitos  -->
        <div v-if="setting" class="mt-5 flex flex-col justify-start ">
            <p class="text-[12px] w-full">© {{ year }} {{ setting.software_name }} {{ $t('All rights reserved') }}.</p>
            <p class="flex text-[10px] md:text-[12px]  w-full">
            </p>
        </div>


    </div>
</template>


<script>
import HttpApi from "@/Services/HttpApi.js";
import { useSettingStore } from "@/Stores/SettingStore.js";
import DropdownDarkLight from "@/Components/UI/DropdownDarkLight.vue";
import LanguageSelector from "@/Components/UI/LanguageSelector.vue";
export default {
    props: [],
    components: { LanguageSelector, DropdownDarkLight, },
    data() {
        return {
            isLoading: false,
            year: new Date().getFullYear(),
            setting: null,

            icons: [
                { id: 1, src: "/storage/providers/PLAYSON.webp", alt: "Descrição da imagem", width: "125px" },
                { id: 2, src: "/storage/providers/HAMERO.webp", alt: "Descrição da imagem", width: "125px" },
                { id: 3, src: "/storage/providers/EVOPLAY.webp", alt: "Descrição da imagem", width: "125px" },
                { id: 4, src: "/storage/providers/PRAGMATIC.webp", alt: "Descrição da imagem", width: "125px" },
                { id: 5, src: "/storage/providers/BETGAMES.webp", alt: "Descrição da imagem", width: "125px" },
                { id: 6, src: "/storage/providers/EVOLUTION.webp", alt: "Descrição da imagem", width: "125px" },
                { id: 7, src: "/storage/providers/PGSOFT.webp", alt: "Descrição da imagem", width: "125px" }
            ],

            columns: [
                {
                    id: 1,
                    icon: "fas fa-info-circle mr-2",
                    title: "SOBRE NÓS  ",
                    links: [
                        { id: 1, label: "Documentação Legal", url: "#" },
                        { id: 2, label: "Perguntas Frequentes", url: "#" },
                        { id: 3, label: "Sobre Nós", url: "#" },
                        { id: 4, label: "Trabalhe Conosco", url: "#" }
                    ]
                },
                {
                    id: 2,
                    icon: "fas fa-wallet mr-2",
                    title: "TRANSAÇÕES  ",
                    links: [
                        { id: 1, label: "Metódos de Pagamentos", url: "#" },
                        { id: 2, label: "Limites de Pagamentos", url: "#" },
                        { id: 3, label: "Realizar Depósito", url: "#" },
                        { id: 4, label: "Solicitar Retirada", url: "#" }
                    ]
                },
                {
                    id: 3,
                    icon: "fas fa-lock mr-2",
                    title: "SEGURANÇA  ",
                    links: [
                        { id: 1, label: "Política de Bônus", url: "#" },
                        { id: 2, label: "Política de Privacidade", url: "#" },
                        { id: 3, label: "Termos de Afiliação", url: "#" },
                        { id: 4, label: "Termos de Uso", url: "#" }
                    ]
                },
                {
                    id: 4,
                    icon: "fas fa-question-circle mr-2",
                    title: "SUPORTE  ",
                    links: [
                        { id: 1, label: "Formulário de Contato", url: "#" },
                        { id: 2, label: "Jogo Responsável", url: "#" },
                        { id: 3, label: "Provedor de Jogos", url: "#" },
                        { id: 4, label: "Regras da Plataforma", url: "#" }
                    ]
                }
            ],

            logos: [
                { id: 1, src: "https://tpmr8.games/assets/images/icons/18.svg", alt: "Descrição da imagem", width: "35px" },
                { id: 2, src: "https://tpmr8.games/assets/images/icons/pix.svg", alt: "Descrição da imagem", width: "60px" },
                { id: 3, src: "https://tpmr8.games/assets/images/icons/jogoresponsavel.svg", alt: "Descrição da imagem", width: "110px" },
                { id: 4, src: "https://tpmr8.games/assets/images/icons/seuslimites.svg", alt: "Descrição da imagem", width: "110px" },
                { id: 5, src: "https://tpmr8.games/assets/images/icons/ssl.svg", alt: "Descrição da imagem", width: "100px" },
                { id: 6, src: "https://tpmr8.games/assets/images/icons/certified.webp", alt: "Descrição da imagem", width: "75px" },
                { id: 7, src: "https://tpmr8.games/assets/images/icons/gambling-curacao.png", alt: "Descrição da imagem", width: "100px" }
            ],
        }
    },
    setup(props) {


        return {};
    },
    computed: {

    },
    mounted() {

    },
    methods: {
        getSetting: function () {
            const _this = this;
            const settingStore = useSettingStore();
            const settingData = settingStore.setting;

            if (settingData) {
                _this.setting = settingData;
            }
        },
    },
    created() {
        this.getSetting();
    },
    watch: {

    },
};
</script>

<style scoped></style>
