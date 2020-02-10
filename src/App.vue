<template>
    <main role="main">
        <article id="webslides" class="vertical">
            <section>
                <span class="background" style="background-image:url('https://webslides.tv/static/images/nature.jpg')"></span>
                <div class="wrap aligncenter">
                    <h1><strong>The Liquor Cabinet</strong></h1>
                    <p class="text-intro">
                        Our collection of fine liquor tastings <br> over the years.
                    </p>
                </div>
            </section>
            <section v-for="item in list">
                <div class="wrap">
                    <div class="grid vertical-align">
                        <div class="column">
                            <img :src="item.image" style="max-width: 500px; margin: 0 auto;" />
                        </div>
                        <div class="column">
                            <h3><strong v-html="item.name" /></h3>
                            <p class="text-intro"><code v-html="item.date" /> for <span v-html="item.recipient" />.</p>
                            <p v-html="item.description" />
                            <a v-if="item.link" :href="item.link" target="_blank">Link &raquo;</a>
                        </div>
                    </div>
                </div>
            </section>
        </article>
    </main>
</template>
<script>

export default {
    data() {
        return {
            list: [
                {
                    name: 'Remy Martin',
                    description: 'Since 1724, the House of Rémy Martin has been driven by one quest - to capture the heart of Cognac.This French favourite features lively fruit and toasted oak. The finish is long and satisfying, especially with spiced cookies.',
                    image: 'https://www.lcbo.com/content/dam/lcbo/products/004101.jpg/jcr:content/renditions/cq5dam.web.1280.1280.jpeg',
                    link: 'https://www.lcbo.com/webapp/wcs/stores/servlet/en/lcbo/vsop-15012024/remy-martin-vsop-cognac-4101#.Xe1BZy0ZOfc',
                    date: 'Aug 2017',
                    rating: null,
                    recipient: 'Carter'
                },
                {
                    name: 'Courvoisier',
                    description: 'This skillfully crafted Cognac is a blend of several crus with a perfect balance between Fins Bois, Grande and Petite Champagnes at the peak of their aromatic potential. Reward yourself with aromas and flavours of luscious peach, toasted almond, and delicate jasmine on a medium weight palate with an enduring finish.',
                    image: 'https://www.lcbo.com/content/dam/lcbo/products/009902.jpg/jcr:content/renditions/cq5dam.web.1280.1280.jpeg',
                    link: 'https://www.lcbo.com/webapp/wcs/stores/servlet/en/lcbo/vsop-15012024/courvoisier-vsop-cognac-9902#.Xe1Boy0ZOfc',
                    date: 'Dec 2017',
                    rating: null,
                    recipient: 'Mark'
                },
                {
                    name: 'Grey Goose VX',
                    description: 'Inspired by the creator of Grey Goose, Maître De Chai François Thibault, whose career began as a cellar master in Cognac, this delicate vodka offers hints of lemon juice, peach blossom and vanilla cream. It is elegant and clean with richness coming from the infusion of fine Cognac; ideal for sipping.',
                    image: 'https://www.lcbo.com/content/dam/lcbo/products/397588.jpg/jcr:content/renditions/cq5dam.web.1280.1280.jpeg',
                    link: 'https://www.lcbo.com/webapp/wcs/stores/servlet/en/lcbo/grey-goose-vx-397588#.Xe1B1y0ZOfc',
                    date: 'Mar 2018',
                    rating: null,
                    recipient: 'Ian'
                },
                {
                    name: 'Hibiki Harmony',
                    description: 'In 1923 Shinjiro Torii envisioned crafting a whisky that would enhance the Japanese dining experience. He did just that with the creation of Habiki Harmony. This layered whisky pours is bright amber and has notes of citrus, honey, lychee, rosemary and oak. Full-bodied and fruity, with a long finish. Serve with smoked trout.',
                    image: 'https://www.lcbo.com/content/dam/lcbo/products/481226.jpg/jcr:content/renditions/cq5dam.web.1280.1280.jpeg',
                    link: 'https://www.lcbo.com/webapp/wcs/stores/servlet/en/lcbo/hibiki-harmony-481226#.Xe1B8S0ZOfc',
                    date: 'Aug 2018',
                    rating: null,
                    recipient: 'Carter'
                },
                {
                    name: 'Glendronach Peated Port Wood Finish Single Malt',
                    description: 'Bright pale gold with glints of amber in the glass. Aromas of smoke, charcoal and toasted herb lead to very assertive flavours of dried red goji berries, peat, and earthy smoke on the palate. The finish is long, warm and peaty. A bold scotch style best sampled on the rocks with a rich, buttery cheddar cheese.',
                    image: 'https://www.lcbo.com/content/dam/lcbo/products/578369.jpg/jcr:content/renditions/cq5dam.web.1280.1280.jpeg',
                    link: 'https://www.lcbo.com/webapp/wcs/stores/servlet/en/lcbo/glendronach-peated-port-wood-finish-single-malt-578369#.Xe1CKC0ZOfc',
                    date: 'Dec 2018',
                    rating: null,
                    recipient: 'Mark'
                },
                {
                    name: 'Poli Moscato Grappa',
                    description: 'Jacopo Poli Moscato is a single-vintage brandy made from Moscato Bianco grapes grown in the Euganei hills in the Veneto region. Here, the soil is volcanic and the temperature is cool, creating grapes with a distinct, flavorful character and crisp acidity. The grapes are fermented in stainless steel before distillation.',
                    image: 'https://www.saq.com/media/catalog/product/1/0/10873614-1_1580609715.png?quality=80&fit=bounds&height=&width=',
                    link: null,
                    date: 'Mar 2019',
                    rating: null,
                    recipient: 'Ian'
                },
                {
                    name: 'Aberfeldy 21 Year Old Highland Single Malt Scotch Whisky',
                    description: 'A deep, concentrated antique amber colour shimmers in the glass, with seductive notes of caramel, raisin, dried apricot, potpourri and honey roasted pecans. On the palate it is smooth, with heat that mellows and flavours of roasted chestnuts, nutmeg, toffee and dried fruit lingering on a long and haunting finish.',
                    image: 'https://www.lcbo.com/content/dam/lcbo/products/400085.jpg/jcr:content/renditions/cq5dam.web.1280.1280.jpeg',
                    link: 'https://www.lcbo.com/webapp/wcs/stores/servlet/en/lcbo/aberfeldy-21-year-old-highland-single-malt-scotch-whisky-400085#.Xe1DBi0ZN0I',
                    date: 'Aug 2019',
                    rating: null,
                    recipient: 'Carter'
                },
                {
                    name: 'Coppola Ada Lovelace Gin',
                    description: 'A gin crafted commemorating the strength and determination of Ada Lovelace. Inviting aromas of Meyer lemon, perfume, pink roses and blue juniper. The palate possesses almond, coriander and floral notes leading to a medium-bodied and smooth finish. Enjoy as a pre-dinner delight in a Gin and Tonic or a Martini.',
                    image: 'https://www.lcbo.com/content/dam/lcbo/products/010724.jpg/jcr:content/renditions/cq5dam.web.1280.1280.jpeg',
                    link: 'https://www.lcbo.com/webapp/wcs/stores/servlet/en/lcbo/gin-15014/coppola-ada-lovelace-gin-10724#.XkCyJhNKhQI',
                    date: 'Dec 2019',
                    rating: null,
                    recipient: 'Mark'
                }
            ]
        }
    },
    mounted() {
        this.list = this.list.reverse()
    }
}
</script>
<style media="screen">
    img {
        box-shadow: 0 1px 3px 0 #dadada;
    }
</style>
